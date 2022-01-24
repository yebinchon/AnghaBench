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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ecore_mcast_ramrod_params {int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {int num_queues; int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  sp_state; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ECORE_ETH_MAC ; 
 int /*<<< orphan*/  ECORE_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  ECORE_FILTER_RX_MODE_SCHED ; 
 int /*<<< orphan*/  ECORE_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  ECORE_UC_LIST_MAC ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NIG_REG_LLH0_FUNC_EN ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC7 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int FUNC9 (struct bxe_softc*) ; 
 int FUNC10 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*) ; 
 int FUNC13 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct bxe_softc*) ; 
 scalar_t__ FUNC18 (struct bxe_softc*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct bxe_softc*,int) ; 
 int FUNC21 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(struct bxe_softc *sc,
                 uint32_t         unload_mode,
                 uint8_t          keep_link)
{
    int port = FUNC6(sc);
    struct ecore_mcast_ramrod_params rparam = { NULL };
    uint32_t reset_code;
    int i, rc = 0;

    FUNC8(sc);

    /* give HW time to discard old tx messages */
    FUNC4(1000);

    /* Clean all ETH MACs */
    rc = FUNC7(sc, &sc->sp_objs[0].mac_obj, ECORE_ETH_MAC, FALSE);
    if (rc < 0) {
        FUNC0(sc, "Failed to delete all ETH MACs (%d)\n", rc);
    }

    /* Clean up UC list  */
    rc = FUNC7(sc, &sc->sp_objs[0].mac_obj, ECORE_UC_LIST_MAC, TRUE);
    if (rc < 0) {
        FUNC0(sc, "Failed to delete UC MACs list (%d)\n", rc);
    }

    /* Disable LLH */
    if (!FUNC3(sc)) {
        FUNC5(sc, NIG_REG_LLH0_FUNC_EN + port*8, 0);
    }

    /* Set "drop all" to stop Rx */

    /*
     * We need to take the BXE_MCAST_LOCK() here in order to prevent
     * a race between the completion code and this code.
     */
    FUNC1(sc);

    if (FUNC19(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state)) {
        FUNC16(ECORE_FILTER_RX_MODE_SCHED, &sc->sp_state);
    } else {
        FUNC17(sc);
    }

    /* Clean up multicast configuration */
    rparam.mcast_obj = &sc->mcast_obj;
    rc = FUNC21(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        FUNC0(sc, "Failed to send DEL MCAST command (%d)\n", rc);
    }

    FUNC2(sc);

    // XXX bxe_iov_chip_cleanup(sc);

    /*
     * Send the UNLOAD_REQUEST to the MCP. This will return if
     * this function should perform FUNCTION, PORT, or COMMON HW
     * reset.
     */
    reset_code = FUNC15(sc, unload_mode);

    /*
     * (assumption: No Attention from MCP at this stage)
     * PMF probably in the middle of TX disable/enable transaction
     */
    rc = FUNC10(sc);
    if (rc) {
        FUNC0(sc, "bxe_func_wait_started failed (%d)\n", rc);
    }

    /*
     * Close multi and leading connections
     * Completions for ramrods are collected in a synchronous way
     */
    for (i = 0; i < sc->num_queues; i++) {
        if (FUNC18(sc, i)) {
            goto unload_error;
        }
    }

    /*
     * If SP settings didn't get completed so far - something
     * very wrong has happen.
     */
    if (!FUNC20(sc, ~0x0UL)) {
        FUNC0(sc, "Common slow path ramrods got stuck!(%d)\n", rc);
    }

unload_error:

    rc = FUNC9(sc);
    if (rc) {
        FUNC0(sc, "Function stop failed!(%d)\n", rc);
    }

    /* disable HW interrupts */
    FUNC11(sc, TRUE);

    /* detach interrupts */
    FUNC12(sc);

    /* Reset the chip */
    rc = FUNC13(sc, reset_code);
    if (rc) {
        FUNC0(sc, "Hardware reset failed(%d)\n", rc);
    }

    /* Report UNLOAD_DONE to MCP */
    FUNC14(sc, keep_link);
}