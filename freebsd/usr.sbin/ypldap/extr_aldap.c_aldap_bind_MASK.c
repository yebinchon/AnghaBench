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
struct aldap {int msgid; int /*<<< orphan*/  err; int /*<<< orphan*/  ber; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALDAP_ERR_OPERATION_FAILED ; 
 int /*<<< orphan*/  BER_CLASS_APP ; 
 int /*<<< orphan*/  BER_CLASS_CONTEXT ; 
 scalar_t__ LDAP_AUTH_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ber_element*) ; 
 scalar_t__ LDAP_REQ_BIND ; 
 int /*<<< orphan*/  VERSION ; 
 struct ber_element* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ber_element*) ; 
 struct ber_element* FUNC3 (struct ber_element*,char*,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ber_element*) ; 

int
FUNC5(struct aldap *ldap, char *binddn, char *bindcred)
{
	struct ber_element *root = NULL, *elm;
	int error;

	if (binddn == NULL)
		binddn = "";
	if (bindcred == NULL)
		bindcred = "";

	if ((root = FUNC1(NULL)) == NULL)
		goto fail;

	elm = FUNC3(root, "d{tdsst", ++ldap->msgid, BER_CLASS_APP,
	    (unsigned long)LDAP_REQ_BIND, VERSION, binddn, bindcred,
	    BER_CLASS_CONTEXT, (unsigned long)LDAP_AUTH_SIMPLE);
	if (elm == NULL)
		goto fail;

	FUNC0("aldap_bind", root);

	error = FUNC4(&ldap->ber, root);
	FUNC2(root);
	root = NULL;
	if (error == -1)
		goto fail;

	return (ldap->msgid);
fail:
	if (root != NULL)
		FUNC2(root);

	ldap->err = ALDAP_ERR_OPERATION_FAILED;
	return (-1);
}