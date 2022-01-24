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
struct bxe_softc {scalar_t__ state; int /*<<< orphan*/ * ifp; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/  sp_err_timeout_task; int /*<<< orphan*/ * chip_tq; int /*<<< orphan*/  chip_tq_task; int /*<<< orphan*/  chip_tq_flags; } ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ BXE_STATE_CLOSED ; 
 scalar_t__ BXE_STATE_DISABLED ; 
 int /*<<< orphan*/  CHIP_TQ_NONE ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int EBUSY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNLOAD_CLOSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*) ; 
 struct bxe_softc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
    struct bxe_softc *sc;
    if_t ifp;

    sc = FUNC15(dev);

    FUNC0(sc, DBG_LOAD, "Starting detach...\n");

    ifp = sc->ifp;
    if (ifp != NULL && FUNC18(ifp)) {
        FUNC1(sc, "Cannot detach while VLANs are in use.\n");
        return(EBUSY);
    }

    FUNC6(sc);

    /* stop the periodic callout */
    FUNC13(sc);

    /* stop the chip taskqueue */
    FUNC4(&sc->chip_tq_flags, CHIP_TQ_NONE);
    if (sc->chip_tq) {
        FUNC21(sc->chip_tq, &sc->chip_tq_task);
        FUNC23(sc->chip_tq);
        sc->chip_tq = NULL;
        FUNC22(taskqueue_thread,
            &sc->sp_err_timeout_task);
    }

    /* stop and reset the controller if it was open */
    if (sc->state != BXE_STATE_CLOSED) {
        FUNC2(sc);
        FUNC12(sc, UNLOAD_CLOSE, TRUE);
        sc->state = BXE_STATE_DISABLED;
        FUNC3(sc);
    }

    /* release the network interface */
    if (ifp != NULL) {
        FUNC16(ifp);
    }
    FUNC19(&sc->ifmedia);

    /* XXX do the following based on driver state... */

    /* free the host hardware/software hsi structures */
    FUNC9(sc);

    /* free ilt */
    FUNC10(sc);

    FUNC8(sc);

    /* release the interrupts */
    FUNC11(sc);

    /* Release the mutexes*/
    FUNC7(sc);
    FUNC14(sc);


    /* Release the PCIe BAR mapped memory */
    FUNC5(sc);

    /* Release the FreeBSD interface. */
    if (sc->ifp != NULL) {
        FUNC17(sc->ifp);
    }

    FUNC20(dev);

    return (0);
}