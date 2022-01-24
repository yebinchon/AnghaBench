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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intr_config_hook {int dummy; } ;
struct TYPE_6__ {struct amr_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct amr_softc {scalar_t__ amr_nextslot; scalar_t__ amr_maxio; int /*<<< orphan*/  amr_dev; TYPE_3__ amr_ich; TYPE_1__* amr_dev_t; int /*<<< orphan*/ * amr_pass; int /*<<< orphan*/  amr_poll_command; int /*<<< orphan*/  amr_get_work; int /*<<< orphan*/  amr_submit_command; int /*<<< orphan*/  amr_poll_command1; int /*<<< orphan*/  amr_bioq; int /*<<< orphan*/  amr_cmd_clusters; int /*<<< orphan*/  amr_ready; int /*<<< orphan*/  amr_freecmds; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_5__ {struct amr_softc* si_drv1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_cdevsw ; 
 int /*<<< orphan*/  FUNC3 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_quartz_get_work ; 
 scalar_t__ FUNC6 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_quartz_poll_command ; 
 int /*<<< orphan*/  amr_quartz_poll_command1 ; 
 int /*<<< orphan*/  amr_quartz_submit_command ; 
 scalar_t__ FUNC7 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_startup ; 
 int /*<<< orphan*/  FUNC8 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_std_get_work ; 
 scalar_t__ FUNC9 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_std_poll_command ; 
 int /*<<< orphan*/  amr_std_submit_command ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct amr_softc*) ; 
 int /*<<< orphan*/  linux_no_adapter ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,char*) ; 

int
FUNC23(struct amr_softc *sc)
{
    device_t child;

    FUNC15(1);

    /*
     * Initialise per-controller queues.
     */
    FUNC4(&sc->amr_freecmds);
    FUNC4(&sc->amr_ready);
    FUNC1(&sc->amr_cmd_clusters);
    FUNC10(&sc->amr_bioq);

    FUNC14(2, "queue init done");

    /*
     * Configure for this controller type.
     */
    if (FUNC0(sc)) {
	sc->amr_submit_command = amr_quartz_submit_command;
	sc->amr_get_work       = amr_quartz_get_work;
	sc->amr_poll_command   = amr_quartz_poll_command;
	sc->amr_poll_command1  = amr_quartz_poll_command1;
    } else {
	sc->amr_submit_command = amr_std_submit_command;
	sc->amr_get_work       = amr_std_get_work;
	sc->amr_poll_command   = amr_std_poll_command;
	FUNC8(sc);
    }

#ifdef AMR_BOARD_INIT
    if ((AMR_IS_QUARTZ(sc) ? amr_quartz_init(sc) : amr_std_init(sc)))
	return(ENXIO);
#endif

    /*
     * Allocate initial commands.
     */
    FUNC2(sc);

    /*
     * Quiz controller for features and limits.
     */
    if (FUNC7(sc))
	return(ENXIO);

    FUNC14(2, "controller query complete");

    /*
     * preallocate the remaining commands.
     */
    while (sc->amr_nextslot < sc->amr_maxio)
	FUNC2(sc);

    /*
     * Setup sysctls.
     */
    FUNC5(sc);

    /*
     * Attach our 'real' SCSI channels to CAM.
     */
    child = FUNC16(sc->amr_dev, "amrp", -1);
    sc->amr_pass = child;
    if (child != NULL) {
	FUNC20(child, sc);
	FUNC19(child, "SCSI Passthrough Bus");
	FUNC11(sc->amr_dev);
    }

    /*
     * Create the control device.
     */
    sc->amr_dev_t = FUNC21(&amr_cdevsw, FUNC17(sc->amr_dev), UID_ROOT, GID_OPERATOR,
			     S_IRUSR | S_IWUSR, "amr%d", FUNC17(sc->amr_dev));
    sc->amr_dev_t->si_drv1 = sc;
    linux_no_adapter++;
    if (FUNC17(sc->amr_dev) == 0)
	FUNC22(sc->amr_dev_t, "megadev0");

    /*
     * Schedule ourselves to bring the controller up once interrupts are
     * available.
     */
    FUNC12(&sc->amr_ich, sizeof(struct intr_config_hook));
    sc->amr_ich.ich_func = amr_startup;
    sc->amr_ich.ich_arg = sc;
    if (FUNC13(&sc->amr_ich) != 0) {
	FUNC18(sc->amr_dev, "can't establish configuration hook\n");
	return(ENOMEM);
    }

    /*
     * Print a little information about the controller.
     */
    FUNC3(sc);

    FUNC14(2, "attach complete");
    return(0);
}