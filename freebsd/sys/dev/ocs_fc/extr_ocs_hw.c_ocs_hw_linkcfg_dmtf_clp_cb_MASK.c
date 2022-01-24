#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  retdata_str ;
struct TYPE_7__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_linkcfg_e ;
struct TYPE_9__ {int /*<<< orphan*/  virt; } ;
struct TYPE_8__ {scalar_t__ opts; TYPE_6__ dma_resp; TYPE_6__ dma_cmd; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ ocs_hw_linkcfg_cb_arg_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ OCS_CMD_POLL ; 
 int /*<<< orphan*/  OCS_HW_LINKCFG_NA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(ocs_hw_t *hw, int32_t status, uint32_t result_len, void *arg)
{
	int32_t rval;
	char retdata_str[64];
	ocs_hw_linkcfg_cb_arg_t *cb_arg = (ocs_hw_linkcfg_cb_arg_t *)arg;
	ocs_hw_linkcfg_e linkcfg = OCS_HW_LINKCFG_NA;

	if (status) {
		FUNC5(hw->os, "CLP cmd failed, status=%d\n", status);
	} else {
		/* parse CLP response to get return data */
		rval = FUNC2(hw, "retdata", retdata_str,
						  sizeof(retdata_str),
						  cb_arg->dma_resp.virt,
						  result_len);

		if (rval <= 0) {
			FUNC4(hw->os, "failed to get retdata %d\n", result_len);
		} else {
			/* translate string into hw enum */
			linkcfg = FUNC3(retdata_str);
		}
	}

	/* invoke callback */
	if (cb_arg->cb) {
		cb_arg->cb(status, linkcfg, cb_arg->arg);
	}

	/* if polling, will free memory in calling function */
	if (cb_arg->opts != OCS_CMD_POLL) {
		FUNC0(hw->os, &cb_arg->dma_cmd);
		FUNC0(hw->os, &cb_arg->dma_resp);
		FUNC1(hw->os, cb_arg, sizeof(*cb_arg));
	}
}