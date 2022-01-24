#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct twe_softc {int twe_wait_aen; struct twe_request** twe_lookup; int /*<<< orphan*/  twe_host_id; } ;
struct twe_request {int dummy; } ;
struct TYPE_4__ {int request_id; int /*<<< orphan*/  host_id; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 TYPE_2__* FUNC0 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int TWE_MAX_RESET_TRIES ; 
 int TWE_Q_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_STATUS_MICROCONTROLLER_READY ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct twe_request* FUNC5 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct twe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct twe_softc*) ; 
 scalar_t__ FUNC16 (struct twe_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC17(struct twe_softc *sc)
{
    struct twe_request	*tr;
    TWE_Command		*cmd;
    u_int32_t		status_reg;
    int			i;

    FUNC4(4);

    /*
     * Initialise request queues.
     */
    FUNC11(sc);
    FUNC8(sc);
    FUNC12(sc);
    FUNC9(sc);
    FUNC10(sc);
    sc->twe_wait_aen = -1;

    /*
     * Allocate request structures up front.
     */
    for (i = 0; i < TWE_Q_LENGTH; i++) {
	if ((tr = FUNC5(sc, i)) == NULL)
	    return(ENOMEM);
	/*
	 * Set global defaults that won't change.
	 */
	cmd = FUNC0(tr);
	cmd->generic.host_id = sc->twe_host_id;		/* controller-assigned host ID */
	cmd->generic.request_id = i;			/* our index number */
	sc->twe_lookup[i] = tr;

	/*
	 * Put command onto the freelist.
	 */
	FUNC1(sc);
	FUNC14(tr);
	FUNC2(sc);
    }
    FUNC1(sc);

    /*
     * Check status register for errors, clear them.
     */
    status_reg = FUNC3(sc);
    FUNC6(sc, status_reg);

    /*
     * Wait for the controller to come ready.
     */
    if (FUNC16(sc, TWE_STATUS_MICROCONTROLLER_READY, 60)) {
	FUNC2(sc);
	FUNC13(sc, "microcontroller not ready\n");
	return(ENXIO);
    }

    /*
     * Disable interrupts from the card.
     */
    FUNC7(sc);

    /*
     * Soft reset the controller, look for the AEN acknowledging the reset,
     * check for errors, drain the response queue.
     */
    for (i = 0; i < TWE_MAX_RESET_TRIES; i++) {

	if (i > 0)
	    FUNC13(sc, "reset %d failed, trying again\n", i);
	
	if (!FUNC15(sc))
	    break;			/* reset process complete */
    }
    FUNC2(sc);
    /* did we give up? */
    if (i >= TWE_MAX_RESET_TRIES) {
	FUNC13(sc, "can't initialise controller, giving up\n");
	return(ENXIO);
    }

    return(0);
}