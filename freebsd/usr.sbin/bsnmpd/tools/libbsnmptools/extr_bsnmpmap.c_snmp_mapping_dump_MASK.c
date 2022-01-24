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
struct snmp_toolinfo {int /*<<< orphan*/  snmp_tablelist; int /*<<< orphan*/  snmp_enumlist; int /*<<< orphan*/  snmp_cnt64list; int /*<<< orphan*/  snmp_gaugelist; int /*<<< orphan*/  snmp_cntlist; int /*<<< orphan*/  snmp_ticklist; int /*<<< orphan*/  snmp_iplist; int /*<<< orphan*/  snmp_oidlist; int /*<<< orphan*/  snmp_octlist; int /*<<< orphan*/  snmp_intlist; int /*<<< orphan*/  snmp_nodelist; int /*<<< orphan*/ * mappings; } ;

/* Variables and functions */
 int /*<<< orphan*/  _bsnmptools_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(struct snmp_toolinfo *snmptoolctx /* int bits */)
{
	if (!_bsnmptools_debug)
		return;

	if (snmptoolctx == NULL) {
		FUNC0(stderr,"No snmptool context!\n");
		return;
	}

	if (snmptoolctx->mappings == NULL) {
		FUNC0(stderr,"No mappings!\n");
		return;
	}

	FUNC0(stderr,"snmp_nodelist:\n");
	FUNC1(&snmptoolctx->snmp_nodelist);

	FUNC0(stderr,"snmp_intlist:\n");
	FUNC1(&snmptoolctx->snmp_intlist);

	FUNC0(stderr,"snmp_octlist:\n");
	FUNC1(&snmptoolctx->snmp_octlist);

	FUNC0(stderr,"snmp_oidlist:\n");
	FUNC1(&snmptoolctx->snmp_oidlist);

	FUNC0(stderr,"snmp_iplist:\n");
	FUNC1(&snmptoolctx->snmp_iplist);

	FUNC0(stderr,"snmp_ticklist:\n");
	FUNC1(&snmptoolctx->snmp_ticklist);

	FUNC0(stderr,"snmp_cntlist:\n");
	FUNC1(&snmptoolctx->snmp_cntlist);

	FUNC0(stderr,"snmp_gaugelist:\n");
	FUNC1(&snmptoolctx->snmp_gaugelist);

	FUNC0(stderr,"snmp_cnt64list:\n");
	FUNC1(&snmptoolctx->snmp_cnt64list);

	FUNC0(stderr,"snmp_enumlist:\n");
	FUNC1(&snmptoolctx->snmp_enumlist);

	FUNC0(stderr,"snmp_tablelist:\n");
	FUNC2(&snmptoolctx->snmp_tablelist);
}