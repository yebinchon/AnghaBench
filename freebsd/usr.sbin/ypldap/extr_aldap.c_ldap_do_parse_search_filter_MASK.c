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
struct ber_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BER_CLASS_CONTEXT ; 
 unsigned long LDAP_FILT_AND ; 
 unsigned long LDAP_FILT_APPR ; 
 unsigned long LDAP_FILT_EQ ; 
 unsigned long LDAP_FILT_GE ; 
 unsigned long LDAP_FILT_LE ; 
 unsigned long LDAP_FILT_NOT ; 
 unsigned long LDAP_FILT_OR ; 
 unsigned long LDAP_FILT_PRES ; 
 unsigned long LDAP_FILT_SUBS ; 
 unsigned long LDAP_FILT_SUBS_ANY ; 
 unsigned long LDAP_FILT_SUBS_FIN ; 
 unsigned long LDAP_FILT_SUBS_INIT ; 
 struct ber_element* FUNC0 (struct ber_element*,char*,size_t) ; 
 struct ber_element* FUNC1 (struct ber_element*) ; 
 struct ber_element* FUNC2 (struct ber_element*) ; 
 int /*<<< orphan*/  FUNC3 (struct ber_element*) ; 
 int /*<<< orphan*/  FUNC4 (struct ber_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ber_element*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,size_t) ; 
 size_t FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static struct ber_element *
FUNC11(struct ber_element *prev, char **cpp)
{
	struct ber_element *elm, *root = NULL;
	char *attr_desc, *attr_val, *parsed_val, *cp;
	size_t len;
	unsigned long type;

	root = NULL;

	/* cpp should pass in pointer to opening parenthesis of "(filter)" */
	cp = *cpp;
	if (*cp != '(')
		goto syntaxfail;

	switch (*++cp) {
	case '&':		/* AND */
	case '|':		/* OR */
		if (*cp == '&')
			type = LDAP_FILT_AND;
		else
			type = LDAP_FILT_OR;

		if ((elm = FUNC2(prev)) == NULL)
			goto callfail;
		root = elm;
		FUNC5(elm, BER_CLASS_CONTEXT, type);

		if (*++cp != '(')		/* opening `(` of filter */
			goto syntaxfail;

		while (*cp == '(') {
			if ((elm =
			    FUNC11(elm, &cp)) == NULL)
				goto bad;
		}

		if (*cp != ')')			/* trailing `)` of filter */
			goto syntaxfail;
		break;

	case '!':		/* NOT */
		if ((root = FUNC1(prev)) == NULL)
			goto callfail;
		FUNC5(root, BER_CLASS_CONTEXT, LDAP_FILT_NOT);

		cp++;				/* now points to sub-filter */
		if ((elm = FUNC11(root, &cp)) == NULL)
			goto bad;

		if (*cp != ')')			/* trailing `)` of filter */
			goto syntaxfail;
		break;

	default:	/* SIMPLE || PRESENCE */
		attr_desc = cp;

		len = FUNC8(cp, "()<>~=");
		cp += len;
		switch (*cp) {
		case '~':
			type = LDAP_FILT_APPR;
			cp++;
			break;
		case '<':
			type = LDAP_FILT_LE;
			cp++;
			break;
		case '>':
			type = LDAP_FILT_GE;
			cp++;
			break;
		case '=':
			type = LDAP_FILT_EQ;	/* assume EQ until disproven */
			break;
		case '(':
		case ')':
		default:
			goto syntaxfail;
		}
		attr_val = ++cp;

		/* presence filter */
		if (FUNC10(attr_val, "*)", 2) == 0) {
			cp++;			/* point to trailing `)` */
			if ((root =
			    FUNC0(prev, attr_desc, len)) == NULL)
				goto bad;

			FUNC5(root, BER_CLASS_CONTEXT, LDAP_FILT_PRES);
			break;
		}

		if ((root = FUNC1(prev)) == NULL)
			goto callfail;
		FUNC5(root, BER_CLASS_CONTEXT, type);

		if ((elm = FUNC0(root, attr_desc, len)) == NULL)
			goto callfail;

		len = FUNC8(attr_val, "*)");
		if (len == 0 && *cp != '*')
			goto syntaxfail;
		cp += len;
		if (*cp == '\0')
			goto syntaxfail;

		if (*cp == '*') {	/* substring filter */
			int initial;

			cp = attr_val;

			FUNC5(root, BER_CLASS_CONTEXT, LDAP_FILT_SUBS);

			if ((elm = FUNC1(elm)) == NULL)
				goto callfail;

			for (initial = 1;; cp++, initial = 0) {
				attr_val = cp;

				len = FUNC8(attr_val, "*)");
				if (len == 0) {
					if (*cp == ')')
						break;
					else
						continue;
				}
				cp += len;
				if (*cp == '\0')
					goto syntaxfail;

				if (initial)
					type = LDAP_FILT_SUBS_INIT;
				else if (*cp == ')')
					type = LDAP_FILT_SUBS_FIN;
				else
					type = LDAP_FILT_SUBS_ANY;

				if ((parsed_val = FUNC7(attr_val, len)) ==
				    NULL)
					goto callfail;
				elm = FUNC0(elm, parsed_val,
				    FUNC9(parsed_val));
				FUNC6(parsed_val);
				if (elm == NULL)
					goto callfail;
				FUNC5(elm, BER_CLASS_CONTEXT, type);
				if (type == LDAP_FILT_SUBS_FIN)
					break;
			}
			break;
		}

		if ((parsed_val = FUNC7(attr_val, len)) == NULL)
			goto callfail;
		elm = FUNC0(elm, parsed_val, FUNC9(parsed_val));
		FUNC6(parsed_val);
		if (elm == NULL)
			goto callfail;
		break;
	}

	cp++;		/* now points one char beyond the trailing `)` */

	*cpp = cp;
	return (root);

syntaxfail:		/* XXX -- error reporting */
callfail:
bad:
	if (root != NULL)
		FUNC3(root);
	FUNC4(prev, NULL);
	return (NULL);
}