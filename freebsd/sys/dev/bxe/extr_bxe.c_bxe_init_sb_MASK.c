#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct hc_status_block_sm {int dummy; } ;
struct TYPE_5__ {void* lo; void* hi; } ;
struct TYPE_4__ {int vf_id; void* vnic_id; int /*<<< orphan*/  vf_valid; void* pf_id; } ;
struct TYPE_6__ {struct hc_status_block_sm* state_machine; TYPE_2__ host_sb_addr; void* same_igu_sb_1b; TYPE_1__ p_func; void* state; } ;
struct hc_status_block_data_e2 {int /*<<< orphan*/  index_data; TYPE_3__ common; } ;
struct hc_status_block_data_e1x {int /*<<< orphan*/  index_data; TYPE_3__ common; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FALSE ; 
 int HC_SEG_ACCESS_NORM ; 
 int IGU_SEG_ACCESS_NORM ; 
 void* SB_ENABLED ; 
 void* FUNC3 (struct bxe_softc*) ; 
 void* FUNC4 (struct bxe_softc*) ; 
 size_t SM_RX_ID ; 
 size_t SM_TX_ID ; 
 void* TRUE ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hc_status_block_sm*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hc_status_block_data_e2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(struct bxe_softc *sc,
            bus_addr_t       busaddr,
            int              vfid,
            uint8_t          vf_valid,
            int              fw_sb_id,
            int              igu_sb_id)
{
    struct hc_status_block_data_e2  sb_data_e2;
    struct hc_status_block_data_e1x sb_data_e1x;
    struct hc_status_block_sm       *hc_sm_p;
    uint32_t *sb_data_p;
    int igu_seg_id;
    int data_size;

    if (FUNC1(sc)) {
        igu_seg_id = HC_SEG_ACCESS_NORM;
    } else {
        igu_seg_id = IGU_SEG_ACCESS_NORM;
    }

    FUNC10(sc, fw_sb_id);

    if (!FUNC2(sc)) {
        FUNC11(&sb_data_e2, 0, sizeof(struct hc_status_block_data_e2));
        sb_data_e2.common.state = SB_ENABLED;
        sb_data_e2.common.p_func.pf_id = FUNC3(sc);
        sb_data_e2.common.p_func.vf_id = vfid;
        sb_data_e2.common.p_func.vf_valid = vf_valid;
        sb_data_e2.common.p_func.vnic_id = FUNC4(sc);
        sb_data_e2.common.same_igu_sb_1b = TRUE;
        sb_data_e2.common.host_sb_addr.hi = FUNC5(busaddr);
        sb_data_e2.common.host_sb_addr.lo = FUNC6(busaddr);
        hc_sm_p = sb_data_e2.common.state_machine;
        sb_data_p = (uint32_t *)&sb_data_e2;
        data_size = (sizeof(struct hc_status_block_data_e2) /
                     sizeof(uint32_t));
        FUNC7(sb_data_e2.index_data);
    } else {
        FUNC11(&sb_data_e1x, 0, sizeof(struct hc_status_block_data_e1x));
        sb_data_e1x.common.state = SB_ENABLED;
        sb_data_e1x.common.p_func.pf_id = FUNC3(sc);
        sb_data_e1x.common.p_func.vf_id = 0xff;
        sb_data_e1x.common.p_func.vf_valid = FALSE;
        sb_data_e1x.common.p_func.vnic_id = FUNC4(sc);
        sb_data_e1x.common.same_igu_sb_1b = TRUE;
        sb_data_e1x.common.host_sb_addr.hi = FUNC5(busaddr);
        sb_data_e1x.common.host_sb_addr.lo = FUNC6(busaddr);
        hc_sm_p = sb_data_e1x.common.state_machine;
        sb_data_p = (uint32_t *)&sb_data_e1x;
        data_size = (sizeof(struct hc_status_block_data_e1x) /
                     sizeof(uint32_t));
        FUNC7(sb_data_e1x.index_data);
    }

    FUNC8(&hc_sm_p[SM_RX_ID], igu_sb_id, igu_seg_id);
    FUNC8(&hc_sm_p[SM_TX_ID], igu_sb_id, igu_seg_id);

    FUNC0(sc, DBG_LOAD, "Init FW SB %d\n", fw_sb_id);

    /* write indices to HW - PCI guarantees endianity of regpairs */
    FUNC9(sc, fw_sb_id, sb_data_p, data_size);
}