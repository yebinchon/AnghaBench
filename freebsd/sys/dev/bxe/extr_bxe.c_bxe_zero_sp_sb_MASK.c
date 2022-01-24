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
struct TYPE_2__ {int /*<<< orphan*/  vf_valid; } ;
struct hc_sp_status_block_data {TYPE_1__ p_func; int /*<<< orphan*/  state; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSTORM_SP_STATUS_BLOCK_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSTORM_SP_SYNC_BLOCK_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SB_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct hc_sp_status_block_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hc_sp_status_block_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc)
{
    struct hc_sp_status_block_data sp_sb_data;

    FUNC5(&sp_sb_data, 0, sizeof(struct hc_sp_status_block_data));

    sp_sb_data.state           = SB_DISABLED;
    sp_sb_data.p_func.vf_valid = FALSE;

    FUNC4(sc, &sp_sb_data);

    FUNC3(sc,
             (BAR_CSTRORM_INTMEM +
              FUNC0(FUNC2(sc))),
              0, CSTORM_SP_STATUS_BLOCK_SIZE);
    FUNC3(sc,
             (BAR_CSTRORM_INTMEM +
              FUNC1(FUNC2(sc))),
              0, CSTORM_SP_SYNC_BLOCK_SIZE);
}