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
struct mly_softc {int /*<<< orphan*/  mly_timeout; TYPE_1__* mly_dev_t; int /*<<< orphan*/  mly_dev; int /*<<< orphan*/  mly_task_complete; int /*<<< orphan*/  mly_lock; int /*<<< orphan*/  mly_periodic; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct mly_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MLY_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mly_softc*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mly_softc*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct mly_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int hz ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int FUNC11 (struct mly_softc*) ; 
 int FUNC12 (struct mly_softc*) ; 
 int /*<<< orphan*/  mly_cdevsw ; 
 int /*<<< orphan*/  mly_complete_handler ; 
 int /*<<< orphan*/  FUNC13 (struct mly_softc*) ; 
 int FUNC14 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mly_softc*) ; 
 int FUNC16 (struct mly_softc*) ; 
 int FUNC17 (struct mly_softc*) ; 
 int FUNC18 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct mly_softc*) ; 
 int FUNC22 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 int /*<<< orphan*/  FUNC24 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct mly_softc*) ; 
 struct mly_softc* mly_softc0 ; 
 int /*<<< orphan*/  mly_timeout ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
    struct mly_softc	*sc = FUNC8(dev);
    int			error;

    FUNC7(1);

    sc->mly_dev = dev;
    FUNC26(&sc->mly_lock, "mly", NULL, MTX_DEF);
    FUNC5(&sc->mly_periodic, &sc->mly_lock, 0);

#ifdef MLY_DEBUG
    callout_init_mtx(&sc->mly_timeout, &sc->mly_lock, 0);
    if (device_get_unit(sc->mly_dev) == 0)
	mly_softc0 = sc;
#endif    

    /*
     * Do PCI-specific initialisation.
     */
    if ((error = FUNC22(sc)) != 0)
	goto out;

    /*
     * Initialise per-controller queues.
     */
    FUNC21(sc);
    FUNC19(sc);
    FUNC20(sc);

    /*
     * Initialise command-completion task.
     */
    FUNC4(&sc->mly_task_complete, 0, mly_complete_handler, sc);

    /* disable interrupts before we start talking to the controller */
    FUNC1(sc);

    /* 
     * Wait for the controller to come ready, handshake with the firmware if required.
     * This is typically only necessary on platforms where the controller BIOS does not
     * run.
     */
    if ((error = FUNC16(sc)))
	goto out;

    /*
     * Allocate initial command buffers.
     */
    if ((error = FUNC11(sc)))
	goto out;

    /* 
     * Obtain controller feature information
     */
    FUNC0(sc);
    error = FUNC17(sc);
    FUNC2(sc);
    if (error)
	goto out;

    /*
     * Reallocate command buffers now we know how many we want.
     */
    FUNC24(sc);
    if ((error = FUNC11(sc)))
	goto out;

    /*
     * Get the current event counter for health purposes, populate the initial
     * health status buffer.
     */
    FUNC0(sc);
    error = FUNC18(sc);

    /*
     * Enable memory-mailbox mode.
     */
    if (error == 0)
	error = FUNC14(sc);
    FUNC2(sc);
    if (error)
	goto out;

    /*
     * Attach to CAM.
     */
    if ((error = FUNC12(sc)))
	goto out;

    /* 
     * Print a little information about the controller 
     */
    FUNC13(sc);

    /*
     * Mark all attached devices for rescan.
     */
    FUNC0(sc);
    FUNC25(sc);

    /*
     * Instigate the first status poll immediately.  Rescan completions won't
     * happen until interrupts are enabled, which should still be before
     * the SCSI subsystem gets to us, courtesy of the "SCSI settling delay".
     */
    FUNC23((void *)sc);
    FUNC2(sc);

    /*
     * Create the control device.
     */
    sc->mly_dev_t = FUNC10(&mly_cdevsw, 0, UID_ROOT, GID_OPERATOR,
			     S_IRUSR | S_IWUSR, "mly%d", FUNC9(sc->mly_dev));
    sc->mly_dev_t->si_drv1 = sc;

    /* enable interrupts now */
    FUNC3(sc);

#ifdef MLY_DEBUG
    callout_reset(&sc->mly_timeout, MLY_CMD_TIMEOUT * hz, mly_timeout, sc);
#endif

 out:
    if (error != 0)
	FUNC15(sc);
    return(error);
}