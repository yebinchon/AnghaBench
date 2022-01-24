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
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 

__attribute__((used)) static int32_t
FUNC3(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
	if (argv == NULL)
		return (-1);

	if (FUNC0(snmptoolctx)) {
		if (FUNC1(argv, &(obj->val.var)) < 0)
			return (-1);
	} else {
		if (FUNC2(snmptoolctx, obj, argv) == NULL &&
		    FUNC1(argv, &(obj->val.var)) < 0)
			return (-1);
	}

	return (1);
}