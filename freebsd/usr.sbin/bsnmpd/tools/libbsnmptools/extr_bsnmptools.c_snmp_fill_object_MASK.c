#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snmp_value {scalar_t__ syntax; int /*<<< orphan*/  var; } ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ syntax; int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASN_MAXID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_object*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int FUNC3 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC6(struct snmp_toolinfo *snmptoolctx, struct snmp_object *obj,
    struct snmp_value *val)
{
	int32_t rc;
	asn_subid_t suboid;

	if (obj == NULL || val == NULL)
		return (-1);

	if ((suboid = FUNC5(&(val->var))) > ASN_MAXID)
		return (-1);

	FUNC1(obj, 0, sizeof(struct snmp_object));
	FUNC0(&(obj->val.var), &(val->var));
	obj->val.syntax = val->syntax;

	if (obj->val.syntax > 0)
		rc = FUNC2(snmptoolctx, obj);
	else
		rc = FUNC3(snmptoolctx, obj);

	(void) FUNC4(&(val->var), suboid);
	(void) FUNC4(&(obj->val.var), suboid);

	return (rc);
}