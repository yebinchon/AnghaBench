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
struct vdump_args {struct table_value* pval; } ;
struct tables_config {int val_size; } ;
struct table_value {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {struct table_value* valuestate; } ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 struct tables_config* FUNC0 (struct ip_fw_chain*) ; 
 struct namedobj_instance* FUNC1 (struct ip_fw_chain*) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC7 (struct table_value*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,void*,int*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct namedobj_instance*,void**,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct namedobj_instance*,void**,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct namedobj_instance*,int /*<<< orphan*/ ,struct vdump_args*) ; 
 struct table_value* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct table_value*,struct table_value*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vdump_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ip_fw_chain*,struct ip_fw_chain*) ; 
 int /*<<< orphan*/  update_tvalue ; 

__attribute__((used)) static int
FUNC17(struct ip_fw_chain *ch)
{
	struct tables_config *tcfg;
	struct namedobj_instance *vi;
	struct table_value *pval, *valuestate, *old_valuestate;
	void *new_idx;
	struct vdump_args da;
	int new_blocks;
	int val_size, val_size_old;

	FUNC3(ch);

	valuestate = NULL;
	new_idx = NULL;

	pval = (struct table_value *)ch->valuestate;
	vi = FUNC1(ch);
	tcfg = FUNC0(ch);

	val_size = tcfg->val_size * 2;

	if (val_size == (1 << 30))
		return (ENOSPC);

	FUNC4(ch);

	valuestate = FUNC13(sizeof(struct table_value) * val_size, M_IPFW,
	    M_WAITOK | M_ZERO);
	FUNC8(val_size, (void *)&new_idx,
	    &new_blocks);

	FUNC2(ch);

	/*
	 * Check if we still need to resize
	 */
	if (tcfg->val_size >= val_size)
		goto done;

	/* Update pointers and notify everyone we're changing @ch */
	pval = (struct table_value *)ch->valuestate;
	FUNC16(ch, ch);

	/* Good. Let's merge */
	FUNC14(valuestate, pval, sizeof(struct table_value) * tcfg->val_size);
	FUNC10(FUNC1(ch), &new_idx, &new_blocks);

	FUNC5(ch);
	/* Change pointers */
	old_valuestate = ch->valuestate;
	ch->valuestate = valuestate;
	valuestate = old_valuestate;
	FUNC11(FUNC1(ch), &new_idx, &new_blocks);

	val_size_old = tcfg->val_size;
	tcfg->val_size = val_size;
	val_size = val_size_old;
	FUNC6(ch);
	/* Update pointers to reflect resize */
	FUNC15(&da, 0, sizeof(da));
	da.pval = (struct table_value *)ch->valuestate;
	FUNC12(vi, update_tvalue, &da);

done:
	FUNC7(valuestate, M_IPFW);
	FUNC9(new_idx, new_blocks);

	return (0);
}