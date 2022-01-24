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
typedef  int uint32_t ;
struct TYPE_3__ {void* vf_valid; } ;
struct TYPE_4__ {TYPE_1__ p_func; void* state; } ;
struct hc_status_block_data_e2 {TYPE_2__ common; } ;
struct hc_status_block_data_e1x {TYPE_2__ common; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CSTORM_STATUS_BLOCK_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  CSTORM_SYNC_BLOCK_SIZE ; 
 void* FALSE ; 
 void* SB_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hc_status_block_data_e2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc,
               int              fw_sb_id)
{
    struct hc_status_block_data_e2 sb_data_e2;
    struct hc_status_block_data_e1x sb_data_e1x;
    uint32_t *sb_data_p;
    uint32_t data_size = 0;

    if (!FUNC0(sc)) {
        FUNC5(&sb_data_e2, 0, sizeof(struct hc_status_block_data_e2));
        sb_data_e2.common.state = SB_DISABLED;
        sb_data_e2.common.p_func.vf_valid = FALSE;
        sb_data_p = (uint32_t *)&sb_data_e2;
        data_size = (sizeof(struct hc_status_block_data_e2) /
                     sizeof(uint32_t));
    } else {
        FUNC5(&sb_data_e1x, 0, sizeof(struct hc_status_block_data_e1x));
        sb_data_e1x.common.state = SB_DISABLED;
        sb_data_e1x.common.p_func.vf_valid = FALSE;
        sb_data_p = (uint32_t *)&sb_data_e1x;
        data_size = (sizeof(struct hc_status_block_data_e1x) /
                     sizeof(uint32_t));
    }

    FUNC4(sc, fw_sb_id, sb_data_p, data_size);

    FUNC3(sc, (BAR_CSTRORM_INTMEM + FUNC1(fw_sb_id)),
             0, CSTORM_STATUS_BLOCK_SIZE);
    FUNC3(sc, (BAR_CSTRORM_INTMEM + FUNC2(fw_sb_id)),
             0, CSTORM_SYNC_BLOCK_SIZE);
}