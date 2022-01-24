#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char ALT ; 
#define  META 130 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
#define  OPER 129 
 char OPT ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
#define  STR 128 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _escaped ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 char* s_start ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

char *
FUNC12 (register char *s, register char *re, register char *mstring)
{
    register char *cs;		/* the current symbol */
    register char *ptr,*s1;	/* temporary pointer */
    bool matched;	/* a temporary bool */

    /* initial conditions */
    if (re == NULL)
	return (NULL);
    cs = re;
    matched = false;

    /* loop till expression string is exhausted (or at least pretty tired) */
    while (*cs) {
	switch (*cs & (OPER | STR | META)) {

	/* try to match a string */
	case STR:
	    matched = !FUNC8 (s, FUNC7(cs), FUNC5(cs));
	    if (matched) {

		/* hoorah it matches */
		s += FUNC5(cs);
		cs = FUNC6(cs);
	    } else if (*cs & ALT) {

		/* alternation, skip to next expression */
		cs = FUNC6(cs);
	    } else if (*cs & OPT) {

		/* the match is optional */
		cs = FUNC6(cs);
		matched = 1;		/* indicate a successful match */
	    } else {

		/* no match, error return */
		return (NULL);
	    }
	    break;

	/* an operator, do something fancy */
	case OPER:
	    switch (FUNC4(cs)) {

	    /* this is an alternation */
	    case '|':
		if (matched)

		    /* last thing in the alternation was a match, skip ahead */
		    cs = FUNC3(cs);
		else

		    /* no match, keep trying */
		    cs = FUNC2(cs);
		break;

	    /* this is a grouping, recurse */
	    case '(':
		ptr = FUNC12(s, FUNC2(cs), mstring);
		if (ptr != NULL) {

		    /* the subexpression matched */
		    matched = 1;
		    s = ptr;
		} else if (*cs & ALT) {

		    /* alternation, skip to next expression */
		    matched = 0;
		} else if (*cs & OPT) {

		    /* the match is optional */
		    matched = 1;	/* indicate a successful match */
		} else {

		    /* no match, error return */
		    return (NULL);
		}
		cs = FUNC3(cs);
		break;
	    }
	    break;

	/* try to match a metasymbol */
	case META:
	    switch (FUNC1(cs)) {

	    /* try to match anything and remember what was matched */
	    case 'p':
		/*
		 *  This is really the same as trying the match the
		 *  remaining parts of the expression to any subset
		 *  of the string.
		 */
		s1 = s;
		do {
		    ptr = FUNC12(s1, FUNC0(cs), mstring);
		    if (ptr != NULL && s1 != s) {

			/* we have a match, remember the match */
			FUNC11 (mstring, s, s1 - s);
			mstring[s1 - s] = '\0';
			return (ptr);
		    } else if (ptr != NULL && (*cs & OPT)) {

			/* it was aoptional so no match is ok */
			return (ptr);
		    } else if (ptr != NULL) {

			/* not optional and we still matched */
			return (NULL);
		    }
		    if (!(FUNC9(*s1) || *s1 == '_' ||
			  /* C++ destructor */
			  *s1 == '~' ||
			  /* C++ scope operator */
			  (FUNC10(s1) > 1 && *s1 == ':' && s1[1] == ':' &&
			   (s1++, true))))
			return (NULL);
		    if (*s1 == '\\')
			_escaped = _escaped ? false : true;
		    else
			_escaped = false;
		} while (*s1++);
		return (NULL);

	    /* try to match anything */
	    case 'a':
		/*
		 *  This is really the same as trying the match the
		 *  remaining parts of the expression to any subset
		 *  of the string.
		 */
		s1 = s;
		do {
		    ptr = FUNC12(s1, FUNC0(cs), mstring);
		    if (ptr != NULL && s1 != s) {

			/* we have a match */
			return (ptr);
		    } else if (ptr != NULL && (*cs & OPT)) {

			/* it was aoptional so no match is ok */
			return (ptr);
		    } else if (ptr != NULL) {

			/* not optional and we still matched */
			return (NULL);
		    }
		    if (*s1 == '\\')
			_escaped = _escaped ? false : true;
		    else
			_escaped = false;
		} while (*s1++);
		return (NULL);

	    /* fail if we are currently _escaped */
	    case 'e':
		if (_escaped)
		    return(NULL);
		cs = FUNC0(cs);
		break;

	    /* match any number of tabs and spaces */
	    case 'd':
		ptr = s;
		while (*s == ' ' || *s == '\t')
		    s++;
		if (s != ptr || s == s_start) {

		    /* match, be happy */
		    matched = 1;
		    cs = FUNC0(cs);
		} else if (*s == '\n' || *s == '\0') {

		    /* match, be happy */
		    matched = 1;
		    cs = FUNC0(cs);
		} else if (*cs & ALT) {

		    /* try the next part */
		    matched = 0;
		    cs = FUNC0(cs);
		} else if (*cs & OPT) {

		    /* doesn't matter */
		    matched = 1;
		    cs = FUNC0(cs);
		} else

		    /* no match, error return */
		    return (NULL);
		break;

	    /* check for end of line */
	    case '$':
		if (*s == '\0' || *s == '\n') {

		    /* match, be happy */
		    s++;
		    matched = 1;
		    cs = FUNC0(cs);
		} else if (*cs & ALT) {

		    /* try the next part */
		    matched = 0;
		    cs = FUNC0(cs);
		} else if (*cs & OPT) {

		    /* doesn't matter */
		    matched = 1;
		    cs = FUNC0(cs);
		} else

		    /* no match, error return */
		    return (NULL);
		break;

	    /* check for start of line */
	    case '^':
		if (s == s_start) {

		    /* match, be happy */
		    matched = 1;
		    cs = FUNC0(cs);
		} else if (*cs & ALT) {

		    /* try the next part */
		    matched = 0;
		    cs = FUNC0(cs);
		} else if (*cs & OPT) {

		    /* doesn't matter */
		    matched = 1;
		    cs = FUNC0(cs);
		} else

		    /* no match, error return */
		    return (NULL);
		break;

	    /* end of a subexpression, return success */
	    case ')':
		return (s);
	    }
	    break;
	}
    }
    return (s);
}