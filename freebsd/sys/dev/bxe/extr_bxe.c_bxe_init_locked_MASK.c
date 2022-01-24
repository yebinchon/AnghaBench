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
typedef  scalar_t__ uint8_t ;
struct bxe_softc {scalar_t__ state; scalar_t__ recovery_state; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ BXE_RECOVERY_DONE ; 
 scalar_t__ BXE_RECOVERY_FAILED ; 
 scalar_t__ BXE_STATE_ERROR ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int ENXIO ; 
 scalar_t__ FALSE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  LOAD_OPEN ; 
 int /*<<< orphan*/  PCI_PM_D0 ; 
 int /*<<< orphan*/  PCI_PM_D3hot ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (struct bxe_softc*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int FUNC9 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*) ; 
 scalar_t__ FUNC13 (struct bxe_softc*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(struct bxe_softc *sc)
{
    int other_engine = FUNC5(sc) ? 0 : 1;
    uint8_t other_load_status, load_status;
    uint8_t global = FALSE;
    int rc;

    FUNC3(sc);

    /* check if the driver is already running */
    if (FUNC14(sc->ifp) & IFF_DRV_RUNNING) {
        FUNC0(sc, DBG_LOAD, "Init called while driver is running!\n");
        return (0);
    }

    if((sc->state == BXE_STATE_ERROR) &&
        (sc->recovery_state == BXE_RECOVERY_FAILED)) {
        FUNC1(sc, "Initialization not done, "
                  "as previous recovery failed."
                  "Reboot/Power-cycle the system\n" );
        return (ENXIO);
    }


    FUNC11(sc, PCI_PM_D0);

    /*
     * If parity occurred during the unload, then attentions and/or
     * RECOVERY_IN_PROGRES may still be set. If so we want the first function
     * loaded on the current engine to complete the recovery. Parity recovery
     * is only relevant for PF driver.
     */
    if (FUNC4(sc)) {
        other_load_status = FUNC7(sc, other_engine);
        load_status = FUNC7(sc, FUNC5(sc));

        if (!FUNC10(sc, FUNC5(sc)) ||
            FUNC6(sc, &global, TRUE)) {
            do {
                /*
                 * If there are attentions and they are in global blocks, set
                 * the GLOBAL_RESET bit regardless whether it will be this
                 * function that will complete the recovery or not.
                 */
                if (global) {
                    FUNC12(sc);
                }

                /*
                 * Only the first function on the current engine should try
                 * to recover in open. In case of attentions in global blocks
                 * only the first in the chip should try to recover.
                 */
                if ((!load_status && (!global || !other_load_status)) &&
                    FUNC13(sc) && !FUNC8(sc)) {
                    FUNC2(sc, "Recovered during init\n");
                    break;
                }

                /* recovery has failed... */
                FUNC11(sc, PCI_PM_D3hot);
                sc->recovery_state = BXE_RECOVERY_FAILED;

                FUNC1(sc, "Recovery flow hasn't properly "
                          "completed yet, try again later. "
                          "If you still see this message after a "
                          "few retries then power cycle is required.\n");

                rc = ENXIO;
                goto bxe_init_locked_done;
            } while (0);
        }
    }

    sc->recovery_state = BXE_RECOVERY_DONE;

    rc = FUNC9(sc, LOAD_OPEN);

bxe_init_locked_done:

    if (rc) {
        /* Tell the stack the driver is NOT running! */
        FUNC1(sc, "Initialization failed, "
                  "stack notified driver is NOT running!\n");
	FUNC15(sc->ifp, 0, IFF_DRV_RUNNING);
    }

    return (rc);
}