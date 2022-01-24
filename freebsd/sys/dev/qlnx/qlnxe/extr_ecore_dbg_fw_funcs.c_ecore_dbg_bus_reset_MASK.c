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
typedef  int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {int one_shot_en; int hw_dwords; int grc_input_en; int unify_inputs; int num_enabled_blocks; TYPE_1__* blocks; int /*<<< orphan*/  state; int /*<<< orphan*/  target; } ;
struct dbg_tools_data {TYPE_2__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 size_t BLOCK_DBG ; 
 int /*<<< orphan*/  DBG_BUS_BLOCK_DATA_ENABLE_MASK ; 
 int /*<<< orphan*/  DBG_BUS_STATE_READY ; 
 int /*<<< orphan*/  DBG_BUS_TARGET_ID_INT_BUF ; 
 int /*<<< orphan*/  DBG_REG_DBG_BLOCK_ON ; 
 int /*<<< orphan*/  DBG_REG_FULL_MODE ; 
 int DBG_STATUS_DBG_BUS_IN_USE ; 
 int DBG_STATUS_INVALID_ARGS ; 
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  ECORE_MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 scalar_t__ FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

enum dbg_status FUNC9(struct ecore_hwfn *p_hwfn,
									struct ecore_ptt *p_ptt,
									bool one_shot_en,
									u8 force_hw_dwords,
									bool unify_inputs,
									bool grc_input_en)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	enum dbg_status status;

	status = FUNC5(p_hwfn, p_ptt);
	if (status != DBG_STATUS_OK)
		return status;

	FUNC0(p_hwfn, ECORE_MSG_DEBUG, "dbg_bus_reset: one_shot_en = %d, force_hw_dwords = %d, unify_inputs = %d, grc_input_en = %d\n", one_shot_en, force_hw_dwords, unify_inputs, grc_input_en);

	if (force_hw_dwords &&
		force_hw_dwords != 4 &&
		force_hw_dwords != 8)
		return DBG_STATUS_INVALID_ARGS;

	if (FUNC6(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON))
		return DBG_STATUS_DBG_BUS_IN_USE;

	/* Update reset state of all blocks */
	FUNC7(p_hwfn, p_ptt);

	/* Disable all debug inputs */
	status = FUNC3(p_hwfn, p_ptt, false);
	if (status != DBG_STATUS_OK)
		return status;

	/* Reset DBG block */
	FUNC4(p_hwfn, p_ptt);

	/* Set one-shot / wrap-around */
	FUNC8(p_hwfn, p_ptt, DBG_REG_FULL_MODE, one_shot_en ? 0 : 1);

	/* Init state params */
	FUNC1(&dev_data->bus, 0, sizeof(dev_data->bus));
	dev_data->bus.target = DBG_BUS_TARGET_ID_INT_BUF;
	dev_data->bus.state = DBG_BUS_STATE_READY;
	dev_data->bus.one_shot_en = one_shot_en;
	dev_data->bus.hw_dwords = force_hw_dwords;
	dev_data->bus.grc_input_en = grc_input_en;
	dev_data->bus.unify_inputs = unify_inputs;
	dev_data->bus.num_enabled_blocks = grc_input_en ? 1 : 0;

	/* Init special DBG block */
	if (grc_input_en)
		FUNC2(dev_data->bus.blocks[BLOCK_DBG].data, DBG_BUS_BLOCK_DATA_ENABLE_MASK, 0x1);

	return DBG_STATUS_OK;
}