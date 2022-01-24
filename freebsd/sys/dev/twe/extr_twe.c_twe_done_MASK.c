#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct twe_softc {int /*<<< orphan*/  twe_state; struct twe_request** twe_lookup; } ;
struct twe_request {scalar_t__ tr_status; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  request_id; } ;
struct TYPE_10__ {TYPE_2__ generic; } ;
struct TYPE_7__ {size_t response_id; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_3__ TWE_Response_Queue ;
typedef  TYPE_4__ TWE_Command ;

/* Variables and functions */
 scalar_t__ TWE_CMD_BUSY ; 
 scalar_t__ TWE_CMD_COMPLETE ; 
 TYPE_4__* FUNC0 (struct twe_request*) ; 
 TYPE_3__ FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_STATE_CTLR_BUSY ; 
 int FUNC2 (struct twe_softc*) ; 
 int TWE_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct twe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct twe_softc*) ; 

__attribute__((used)) static void
FUNC11(struct twe_softc *sc, int startio)
{
    TWE_Response_Queue	rq;
    TWE_Command		*cmd;
    struct twe_request	*tr;
    int			found;
    u_int32_t		status_reg;
    
    FUNC4(5);

    /* loop collecting completed commands */
    found = 0;
    for (;;) {
	status_reg = FUNC2(sc);
	FUNC5(sc, status_reg);		/* XXX should this fail? */

	if (!(status_reg & TWE_STATUS_RESPONSE_QUEUE_EMPTY)) {
	    found = 1;
	    rq = FUNC1(sc);
	    tr = sc->twe_lookup[rq.u.response_id];	/* find command */
	    cmd = FUNC0(tr);
	    if (tr->tr_status != TWE_CMD_BUSY)
		FUNC8(sc, "completion event for nonbusy command\n");
	    tr->tr_status = TWE_CMD_COMPLETE;
	    FUNC3(3, "completed request id %d with status %d", 
		  cmd->generic.request_id, cmd->generic.status);
	    /* move to completed queue */
	    FUNC9(tr);
	    FUNC7(tr);
	    sc->twe_state &= ~TWE_STATE_CTLR_BUSY;
	} else {
	    break;					/* no response ready */
	}
    }

    /* if we've completed any commands, try posting some more */
    if (found && startio)
	FUNC10(sc);

    /* handle completion and timeouts */
    FUNC6(sc);		/* XXX use deferred completion? */
}