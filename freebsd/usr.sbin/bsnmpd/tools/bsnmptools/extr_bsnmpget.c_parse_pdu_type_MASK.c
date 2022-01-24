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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNMP_PDU_GET ; 
 int /*<<< orphan*/  SNMP_PDU_GETBULK ; 
 int /*<<< orphan*/  SNMP_PDU_GETNEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC4(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
	FUNC1(opt_arg != NULL);

	if (FUNC2(opt_arg, "getbulk") == 0)
		FUNC0(snmptoolctx, SNMP_PDU_GETBULK);
	else if (FUNC2(opt_arg, "getnext") == 0)
		FUNC0(snmptoolctx, SNMP_PDU_GETNEXT);
	else if (FUNC2(opt_arg, "get") == 0)
		FUNC0(snmptoolctx, SNMP_PDU_GET);
	else {
		FUNC3("PDU type '%s' not supported.", opt_arg);
		return (-1);
	}

	return (2);
}