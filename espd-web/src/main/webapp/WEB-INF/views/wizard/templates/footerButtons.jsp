<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<tiles:importAttribute name="prev"/>
<tiles:importAttribute name="next"/>
<tiles:importAttribute name="nextCode"/>
<tiles:importAttribute name="prevCode"/>

<c:set var="prevUrl" value="${fn:startsWith(prev,'/')}"/>
<c:set var="nextUrl" value="${fn:startsWith(next,'/')}"/>

<div class="col-md-7">&nbsp;</div>
<div class="col-md-5">
    <div class="btn-group">
    	<c:if test="${!prevUrl}">
	        <button id="prevBtn" type="submit" class="btn btn-default btn-lg" name="prev" value="${prev}">
	            <i class="fa fa-arrow-circle-o-left"></i> <span data-i18n="${prevCode}"><s:message code="${prevCode}"/></span>
	        </button>
        </c:if>
    	<c:if test="${prevUrl}">
	        <a id="prevBtn" class="btn btn-default btn-lg" href="${pageContext.request.contextPath}${prev}">
				<i class="fa fa-arrow-circle-o-left"></i> <span data-i18n="${prevCode}"><s:message code="${prevCode}"/></span>
	        </a>
    	</c:if>
        <a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/welcome">
            <i class="fa fa-times-circle"></i>
            <span data-i18n="cancel"><s:message code="cancel"/></span>
        </a>
    	<c:if test="${!nextUrl}">
	        <button id="nextBtn" type="submit" class="btn btn-default btn-lg" name="next" value="${next}">
	            <i class="fa fa-arrow-circle-o-right"></i> <span data-i18n="${nextCode}"><s:message code="${nextCode}"/></span>
	        </button>
        </c:if>
    	<c:if test="${nextUrl}">
	        <a id="nextBtn" class="btn btn-default btn-lg" href="${pageContext.request.contextPath}${next}">
				<i class="fa fa-arrow-circle-o-right"></i> <span data-i18n="${nextCode}"><s:message code="${nextCode}"/></span>
	        </a>
    	</c:if>
    </div>
</div>