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
struct tables_config {int /*<<< orphan*/  namehash; } ;
struct table_info {int dummy; } ;
struct ip_fw_chain {struct tables_config* tblcfg; void* tablestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int V_fw_tables_max ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,int) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opcodes ; 
 int /*<<< orphan*/  scodes ; 

int
FUNC6(struct ip_fw_chain *ch, int first)
{
	struct tables_config *tcfg;

	/* Allocate pointers */
	ch->tablestate = FUNC5(V_fw_tables_max * sizeof(struct table_info),
	    M_IPFW, M_WAITOK | M_ZERO);

	tcfg = FUNC5(sizeof(struct tables_config), M_IPFW, M_WAITOK | M_ZERO);
	tcfg->namehash = FUNC2(V_fw_tables_max);
	ch->tblcfg = tcfg;

	FUNC4(ch, first);
	FUNC3(ch);

	FUNC0(first, opcodes);
	FUNC1(first, scodes);
	return (0);
}