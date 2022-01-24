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
struct snmp_toolinfo {int /*<<< orphan*/ * mappings; int /*<<< orphan*/  snmp_tclist; int /*<<< orphan*/  snmp_tablelist; int /*<<< orphan*/  snmp_enumlist; int /*<<< orphan*/  snmp_cnt64list; int /*<<< orphan*/  snmp_gaugelist; int /*<<< orphan*/  snmp_cntlist; int /*<<< orphan*/  snmp_ticklist; int /*<<< orphan*/  snmp_iplist; int /*<<< orphan*/  snmp_oidlist; int /*<<< orphan*/  snmp_octlist; int /*<<< orphan*/  snmp_intlist; int /*<<< orphan*/  snmp_nodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct snmp_toolinfo *snmptoolctx)
{
	if (snmptoolctx == NULL || snmptoolctx->mappings == NULL)
		return (-1);

	FUNC2(&snmptoolctx->snmp_nodelist);
	FUNC2(&snmptoolctx->snmp_intlist);
	FUNC2(&snmptoolctx->snmp_octlist);
	FUNC2(&snmptoolctx->snmp_oidlist);
	FUNC2(&snmptoolctx->snmp_iplist);
	FUNC2(&snmptoolctx->snmp_ticklist);
	FUNC2(&snmptoolctx->snmp_cntlist);
	FUNC2(&snmptoolctx->snmp_gaugelist);
	FUNC2(&snmptoolctx->snmp_cnt64list);
	FUNC2(&snmptoolctx->snmp_enumlist);
	FUNC3(&snmptoolctx->snmp_tablelist);
	FUNC1(&snmptoolctx->snmp_tclist);
	FUNC0(snmptoolctx->mappings);

	return (0);
}