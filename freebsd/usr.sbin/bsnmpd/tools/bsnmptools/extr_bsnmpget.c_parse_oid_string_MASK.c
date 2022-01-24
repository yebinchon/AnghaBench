#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct snmp_value {TYPE_1__ v; } ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_2__ val; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_object*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snmp_value*,char*) ; 
 scalar_t__ FUNC4 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC6(struct snmp_toolinfo *snmptoolctx,
    struct snmp_value *value, char *string)
{
	struct snmp_object obj;

	if (FUNC1(string[0]))
		return (FUNC3(value, string));

	FUNC2(&obj, 0, sizeof(struct snmp_object));
	if (FUNC4(snmptoolctx, &obj, string) < 0) {
		FUNC5("Unknown OID enum string - %s", string);
		return (-1);
	}

	FUNC0(&(value->v.oid), &(obj.val.var));
	return (1);
}