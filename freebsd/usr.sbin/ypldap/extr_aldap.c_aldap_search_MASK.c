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
struct aldap_page_control {int dummy; } ;
struct aldap {int msgid; void* err; int /*<<< orphan*/  ber; } ;
typedef  enum scope { ____Placeholder_scope } scope ;

/* Variables and functions */
 void* ALDAP_ERR_OPERATION_FAILED ; 
 void* ALDAP_ERR_PARSER_ERROR ; 
 int /*<<< orphan*/  BER_CLASS_APP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ber_element*) ; 
 scalar_t__ LDAP_DEREF_NEVER ; 
 scalar_t__ LDAP_REQ_SEARCH ; 
 int /*<<< orphan*/  FUNC1 (struct ber_element*,int,struct aldap_page_control*) ; 
 struct ber_element* FUNC2 (struct ber_element*) ; 
 struct ber_element* FUNC3 (struct ber_element*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ber_element*) ; 
 struct ber_element* FUNC5 (struct ber_element*,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ber_element*) ; 
 struct ber_element* FUNC7 (struct ber_element*,char*) ; 

int
FUNC8(struct aldap *ldap, char *basedn, enum scope scope, char *filter,
    char **attrs, int typesonly, int sizelimit, int timelimit,
    struct aldap_page_control *page)
{
	struct ber_element *root = NULL, *ber, *c;
	int i, error;

	if ((root = FUNC2(NULL)) == NULL)
		goto fail;

	ber = FUNC5(root, "d{t", ++ldap->msgid, BER_CLASS_APP,
	    (unsigned long) LDAP_REQ_SEARCH);
	if (ber == NULL) {
		ldap->err = ALDAP_ERR_OPERATION_FAILED;
		goto fail;
	}

	c = ber;	
	ber = FUNC5(ber, "sEEddb", basedn, (long long)scope,
	                         (long long)LDAP_DEREF_NEVER, sizelimit, 
				 timelimit, typesonly);
	if (ber == NULL) {
		ldap->err = ALDAP_ERR_OPERATION_FAILED;
		goto fail;
	}

	if ((ber = FUNC7(ber, filter)) == NULL) {
		ldap->err = ALDAP_ERR_PARSER_ERROR;
		goto fail;
	}

	if ((ber = FUNC2(ber)) == NULL)
		goto fail;
	if (attrs != NULL)
		for (i = 0; attrs[i] != NULL; i++) {
			if ((ber = FUNC3(ber, attrs[i])) == NULL)
				goto fail;
		}

	FUNC1(c, 100, page);

	FUNC0("aldap_search", root);

	error = FUNC6(&ldap->ber, root);
	FUNC4(root);
	root = NULL;
	if (error == -1) {
		ldap->err = ALDAP_ERR_OPERATION_FAILED;
		goto fail;
	}

	return (ldap->msgid);

fail:
	if (root != NULL)
		FUNC4(root);

	return (-1);
}