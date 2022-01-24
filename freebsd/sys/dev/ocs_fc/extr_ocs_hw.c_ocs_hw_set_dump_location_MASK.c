#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_13__ {int last; int buffer_length; int /*<<< orphan*/  buffer_address_low; int /*<<< orphan*/  buffer_address_high; } ;
typedef  TYPE_2__ sli4_sge_t ;
struct TYPE_15__ {int size; int len; int /*<<< orphan*/  phys; TYPE_2__* virt; } ;
struct TYPE_12__ {scalar_t__ disable_dump_loc; } ;
struct TYPE_14__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; TYPE_4__ dump_sges; TYPE_1__ workaround; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  TYPE_4__ ocs_dma_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_MIN_DMA_ALIGNMENT ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__) ; 

ocs_hw_rtn_e
FUNC10(ocs_hw_t *hw, uint32_t num_buffers, ocs_dma_t *dump_buffers, uint8_t fdb)
{
	uint8_t bus, dev, func;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	uint8_t	buf[SLI4_BMBX_SIZE];

	/*
	 * Make sure the FW is new enough to support this command. If the FW
	 * is too old, the FW will UE.
	 */
	if (hw->workaround.disable_dump_loc) {
		FUNC7(hw->os, "FW version is too old for this feature\n");
		return OCS_HW_RTN_ERROR;
	}

	/* This command is only valid for physical port 0 */
	FUNC4(hw->os, &bus, &dev, &func);
	if (fdb == 0 && func != 0) {
		FUNC7(hw->os, "function only valid for pci function 0, %d passed\n",
			     func);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * If a single buffer is used, then it may be passed as is to the chip. For multiple buffers,
	 * We must allocate a SGL list and then pass the address of the list to the chip.
	 */
	if (num_buffers > 1) {
		uint32_t sge_size = num_buffers * sizeof(sli4_sge_t);
		sli4_sge_t *sge;
		uint32_t i;

		if (hw->dump_sges.size < sge_size) {
			FUNC3(hw->os, &hw->dump_sges);
			if (FUNC2(hw->os, &hw->dump_sges, sge_size, OCS_MIN_DMA_ALIGNMENT)) {
				FUNC6(hw->os, "SGE DMA allocation failed\n");
				return OCS_HW_RTN_NO_MEMORY;
			}
		}
		/* build the SGE list */
		FUNC8(hw->dump_sges.virt, 0, hw->dump_sges.size);
		hw->dump_sges.len = sge_size;
		sge = hw->dump_sges.virt;
		for (i = 0; i < num_buffers; i++) {
			sge[i].buffer_address_high = FUNC0(dump_buffers[i].phys);
			sge[i].buffer_address_low = FUNC1(dump_buffers[i].phys);
			sge[i].last = (i == num_buffers - 1 ? 1 : 0);
			sge[i].buffer_length = dump_buffers[i].size;
		}
		rc = FUNC9(&hw->sli, (void *)buf,
						      SLI4_BMBX_SIZE, FALSE, TRUE,
						      &hw->dump_sges, fdb);
	} else {
		dump_buffers->len = dump_buffers->size;
		rc = FUNC9(&hw->sli, (void *)buf,
						      SLI4_BMBX_SIZE, FALSE, FALSE,
						      dump_buffers, fdb);
	}

	if (rc) {
		rc = FUNC5(hw, buf, OCS_CMD_POLL,
				     NULL, NULL);
		if (rc) {
			FUNC6(hw->os, "ocs_hw_command returns %d\n",
				rc);
		}
	} else {
		FUNC6(hw->os,
			"sli_cmd_common_set_dump_location failed\n");
		rc = OCS_HW_RTN_ERROR;
	}

	return rc;
}