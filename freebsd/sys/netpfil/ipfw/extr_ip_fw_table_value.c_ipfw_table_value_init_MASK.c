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
struct tables_config {int val_size; int /*<<< orphan*/  valhash; } ;
struct table_value {int dummy; } ;
struct ip_fw_chain {struct tables_config* tblcfg; int /*<<< orphan*/  valuestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int VALDATA_START_SIZE ; 
 int /*<<< orphan*/  cmp_table_value ; 
 int /*<<< orphan*/  hash_table_value ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scodes ; 

void
FUNC4(struct ip_fw_chain *ch, int first)
{
	struct tables_config *tcfg;

	ch->valuestate = FUNC3(VALDATA_START_SIZE * sizeof(struct table_value),
	    M_IPFW, M_WAITOK | M_ZERO);

	tcfg = ch->tblcfg;

	tcfg->val_size = VALDATA_START_SIZE;
	tcfg->valhash = FUNC1(tcfg->val_size);
	FUNC2(tcfg->valhash, hash_table_value,
	    cmp_table_value);

	FUNC0(first, scodes);
}