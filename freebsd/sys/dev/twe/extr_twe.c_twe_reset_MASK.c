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
struct twe_softc {int /*<<< orphan*/  twe_io_lock; } ;
struct twe_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 int TWE_MAX_RESET_TRIES ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct twe_request* FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_softc*) ; 

__attribute__((used)) static void
FUNC8(struct twe_softc *sc)
{
    struct twe_request	*tr;
    int			i;

    /*
     * Sleep for a short period to allow AENs to be signalled.
     */
    FUNC0(sc, &sc->twe_io_lock, PRIBIO, "twereset", hz);

    /*
     * Disable interrupts from the controller, and mask any accidental entry
     * into our interrupt handler.
     */
    FUNC5(sc, "controller reset in progress...\n");
    FUNC2(sc);

    /*
     * Try to soft-reset the controller.
     */
    for (i = 0; i < TWE_MAX_RESET_TRIES; i++) {

	if (i > 0)
	    FUNC5(sc, "reset %d failed, trying again\n", i);
	
	if (!FUNC6(sc))
	    break;			/* reset process complete */
    }
    /* did we give up? */
    if (i >= TWE_MAX_RESET_TRIES) {
	FUNC5(sc, "can't reset controller, giving up\n");
	goto out;
    }

    /*
     * Move all of the commands that were busy back to the ready queue.
     */
    i = 0;
    while ((tr = FUNC1(sc)) != NULL) {
	FUNC4(tr);
	i++;
    }

    /*
     * Kick the controller to start things going again, then re-enable interrupts.
     */
    FUNC7(sc);
    FUNC5(sc, "controller reset done, %d commands restarted\n", i);

out:
    FUNC3(sc);
}