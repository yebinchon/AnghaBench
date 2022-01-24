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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 scalar_t__ FUNC8 (struct bxe_softc*) ; 
 scalar_t__ FUNC9 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct bxe_softc *sc)
{
    uint32_t poll_cnt = FUNC6(sc);

    FUNC0(sc, DBG_LOAD, "Cleanup after FLR PF[%d]\n", FUNC4(sc));

    /* Re-enable PF target read access */
    FUNC3(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);

    /* Poll HW usage counters */
    FUNC0(sc, DBG_LOAD, "Polling usage counters\n");
    if (FUNC9(sc, poll_cnt)) {
        return (-1);
    }

    /* Zero the igu 'trailing edge' and 'leading edge' */

    /* Send the FW cleanup command */
    if (FUNC10(sc, (uint8_t)FUNC5(sc), poll_cnt)) {
        return (-1);
    }

    /* ATC cleanup */

    /* Verify TX hw is flushed */
    FUNC11(sc, poll_cnt);

    /* Wait 100ms (not adjusted according to platform) */
    FUNC2(100000);

    /* Verify no pending pci transactions */
    if (FUNC8(sc)) {
        FUNC1(sc, "PCIE Transactions still pending\n");
    }

    /* Debug */
    FUNC7(sc);

    /*
     * Master enable - Due to WB DMAE writes performed before this
     * register is re-initialized as part of the regular function init
     */
    FUNC3(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

    return (0);
}