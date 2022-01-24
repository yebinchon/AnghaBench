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
struct table_info {int /*<<< orphan*/ * lookup; } ;
struct table_config {int /*<<< orphan*/  astate; TYPE_1__* ta; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {void* tablestate; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* change_ti ) (int /*<<< orphan*/ ,struct table_info*) ;} ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 unsigned int IPFW_TABLES_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 unsigned int V_fw_tables_max ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,void*,int*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct namedobj_instance*,void**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct namedobj_instance*,void**,int*) ; 
 scalar_t__ FUNC10 (struct namedobj_instance*,int) ; 
 void* FUNC11 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct table_info*) ; 

int
FUNC15(struct ip_fw_chain *ch, unsigned int ntables)
{
	unsigned int ntables_old, tbl;
	struct namedobj_instance *ni;
	void *new_idx, *old_tablestate, *tablestate;
	struct table_info *ti;
	struct table_config *tc;
	int i, new_blocks;

	/* Check new value for validity */
	if (ntables == 0)
		return (EINVAL);
	if (ntables > IPFW_TABLES_MAX)
		ntables = IPFW_TABLES_MAX;
	/* Alight to nearest power of 2 */
	ntables = (unsigned int)FUNC13(ntables); 

	/* Allocate new pointers */
	tablestate = FUNC11(ntables * sizeof(struct table_info),
	    M_IPFW, M_WAITOK | M_ZERO);

	FUNC6(ntables, (void *)&new_idx, &new_blocks);

	FUNC1(ch);

	tbl = (ntables >= V_fw_tables_max) ? V_fw_tables_max : ntables;
	ni = FUNC0(ch);

	/* Temporary restrict decreasing max_tables */
	if (ntables < V_fw_tables_max) {

		/*
		 * FIXME: Check if we really can shrink
		 */
		FUNC2(ch);
		return (EINVAL);
	}

	/* Copy table info/indices */
	FUNC12(tablestate, ch->tablestate, sizeof(struct table_info) * tbl);
	FUNC8(ni, &new_idx, &new_blocks);

	FUNC3(ch);

	/* Change pointers */
	old_tablestate = ch->tablestate;
	ch->tablestate = tablestate;
	FUNC9(ni, &new_idx, &new_blocks);

	ntables_old = V_fw_tables_max;
	V_fw_tables_max = ntables;

	FUNC4(ch);

	/* Notify all consumers that their @ti pointer has changed */
	ti = (struct table_info *)ch->tablestate;
	for (i = 0; i < tbl; i++, ti++) {
		if (ti->lookup == NULL)
			continue;
		tc = (struct table_config *)FUNC10(ni, i);
		if (tc == NULL || tc->ta->change_ti == NULL)
			continue;

		tc->ta->change_ti(tc->astate, ti);
	}

	FUNC2(ch);

	/* Free old pointers */
	FUNC5(old_tablestate, M_IPFW);
	FUNC7(new_idx, new_blocks);

	return (0);
}