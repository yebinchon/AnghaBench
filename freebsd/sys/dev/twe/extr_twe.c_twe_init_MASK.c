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
struct twe_softc {int /*<<< orphan*/  twe_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_INIT_MESSAGE_CREDITS ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int TWE_MAX_UNITS ; 
 int /*<<< orphan*/  TWE_PARAM_FEATURES ; 
 int /*<<< orphan*/  TWE_PARAM_FEATURES_DriverShutdown ; 
 int /*<<< orphan*/  TWE_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC4 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct twe_softc *sc)
{
    int 		i;

    /*
     * Scan for drives
     */
    FUNC0(sc);
    for (i = 0; i < TWE_MAX_UNITS; i++)
	FUNC4(sc, i);
    FUNC1(sc);

    /*
     * Initialise connection with controller.
     */
    FUNC2(sc);
    FUNC6(sc, TWE_INIT_MESSAGE_CREDITS);

#ifdef TWE_SHUTDOWN_NOTIFICATION
    /*
     * Tell the controller we support shutdown notification.
     */
    twe_set_param_1(sc, TWE_PARAM_FEATURES, TWE_PARAM_FEATURES_DriverShutdown, 1);
#endif

    /* 
     * Mark controller up and ready to run.
     */
    sc->twe_state &= ~TWE_STATE_SHUTDOWN;

    /*
     * Finally enable interrupts.
     */
    FUNC5(sc);
    FUNC3(sc);
}