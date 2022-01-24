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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwm_softc {int num_of_pages_in_last_blk; int num_of_paging_blk; TYPE_2__* fw_paging_db; int /*<<< orphan*/  sc_dmat; } ;
struct iwm_fw_paging_cmd {int /*<<< orphan*/ * device_phy_addr; int /*<<< orphan*/  block_num; int /*<<< orphan*/  block_size; int /*<<< orphan*/  flags; } ;
struct iwm_fw_img {int dummy; } ;
typedef  int /*<<< orphan*/  fw_paging_cmd ;
struct TYPE_3__ {int paddr; int /*<<< orphan*/  map; } ;
struct TYPE_4__ {TYPE_1__ fw_paging_block; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  IWM_ALWAYS_LONG_GROUP ; 
 int IWM_BLOCK_2_EXP_SIZE ; 
 int /*<<< orphan*/  IWM_FW_PAGING_BLOCK_CMD ; 
 int IWM_PAGE_2_EXP_SIZE ; 
 int IWM_PAGING_CMD_IS_ENABLED ; 
 int IWM_PAGING_CMD_IS_SECURED ; 
 int IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_fw_paging_cmd*) ; 

int
FUNC4(struct iwm_softc *sc, const struct iwm_fw_img *fw)
{
	int blk_idx;
	uint32_t dev_phy_addr;
	struct iwm_fw_paging_cmd fw_paging_cmd = {
		.flags =
			FUNC1(IWM_PAGING_CMD_IS_SECURED |
				IWM_PAGING_CMD_IS_ENABLED |
				(sc->num_of_pages_in_last_blk <<
				IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS)),
		.block_size = FUNC1(IWM_BLOCK_2_EXP_SIZE),
		.block_num = FUNC1(sc->num_of_paging_blk),
	};

	/* loop for for all paging blocks + CSS block */
	for (blk_idx = 0; blk_idx < sc->num_of_paging_blk + 1; blk_idx++) {
		dev_phy_addr = FUNC1(
		    sc->fw_paging_db[blk_idx].fw_paging_block.paddr >>
		    IWM_PAGE_2_EXP_SIZE);
		fw_paging_cmd.device_phy_addr[blk_idx] = dev_phy_addr;
		FUNC0(sc->sc_dmat,
		    sc->fw_paging_db[blk_idx].fw_paging_block.map,
		    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
	}

	return FUNC3(sc, FUNC2(IWM_FW_PAGING_BLOCK_CMD,
						   IWM_ALWAYS_LONG_GROUP, 0),
				    0, sizeof(fw_paging_cmd), &fw_paging_cmd);
}