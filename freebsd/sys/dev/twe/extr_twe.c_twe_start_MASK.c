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
typedef  int u_int32_t ;
struct twe_softc {int dummy; } ;
struct twe_request {int tr_flags; int /*<<< orphan*/ * tr_complete; int /*<<< orphan*/  tr_status; struct twe_softc* tr_sc; } ;
struct TYPE_4__ {int /*<<< orphan*/  request_id; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TWE_CMD_BUSY ; 
 int TWE_CMD_SLEEPER ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int FUNC4 (struct twe_softc*) ; 
 int TWE_STATUS_COMMAND_QUEUE_FULL ; 
 int TWE_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC7 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct twe_request*) ; 

int
FUNC10(struct twe_request *tr)
{
    struct twe_softc	*sc = tr->tr_sc;
    TWE_Command		*cmd;
    int			i;
    u_int32_t		status_reg;

    FUNC6(4);

    if (!dumping)
	FUNC3(sc);

    /* mark the command as currently being processed */
    tr->tr_status = TWE_CMD_BUSY;
    cmd = FUNC1(tr);

    /* 
     * Spin briefly waiting for the controller to come ready 
     *
     * XXX it might be more efficient to return EBUSY immediately
     *     and let the command be rescheduled.
     */
    for (i = 100000; (i > 0); i--) {
	
	/* check to see if we can post a command */
	status_reg = FUNC4(sc);
	FUNC7(sc, status_reg);

	if (!(status_reg & TWE_STATUS_COMMAND_QUEUE_FULL)) {
	    FUNC9(tr);

	    FUNC0(sc, FUNC2(tr));

	    /* move command to work queue */
#ifdef TWE_DEBUG
	    if (tr->tr_complete != NULL) {
		debug(3, "queued request %d with callback %p", cmd->generic.request_id, tr->tr_complete);
	    } else if (tr->tr_flags & TWE_CMD_SLEEPER) {
		debug(3, "queued request %d with wait channel %p", cmd->generic.request_id, tr);
	    } else {
		debug(3, "queued request %d for polling caller", cmd->generic.request_id);
	    }
#endif
	    return(0);
	} else if (!(status_reg & TWE_STATUS_RESPONSE_QUEUE_EMPTY) && i > 1)
	    FUNC8(sc, 0);
    }

    /* 
     * We couldn't get the controller to take the command; try submitting it again later.
     * This should only happen if something is wrong with the controller, or if we have
     * overestimated the number of commands it can accept.  (Should we actually reject
     * the command at this point?)
     */
    return(EBUSY);
}