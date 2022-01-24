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
struct snmp_toolinfo {int dummy; } ;
struct snmp_object {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 
 char* FUNC1 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int32_t
FUNC3(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
	char *ptr;

	if ((ptr = FUNC1(snmptoolctx, obj, argv)) == NULL)
		return (-1);

	if (*ptr != '=') {
		FUNC2("Value to set expected after OID");
		return (-1);
	}

	if (FUNC0(snmptoolctx, obj, ptr + 1) < 0)
		return (-1);

	return (1);
}