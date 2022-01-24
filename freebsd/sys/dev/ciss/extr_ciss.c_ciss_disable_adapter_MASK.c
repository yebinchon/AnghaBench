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
struct ciss_softc {int ciss_max_requests; struct ciss_request* ciss_request; int /*<<< orphan*/  ciss_flags; int /*<<< orphan*/  ciss_dev; } ;
struct ciss_request {int cr_flags; int /*<<< orphan*/  (* cr_complete ) (struct ciss_request*) ;struct ciss_command* cr_cc; } ;
struct ciss_error_info {int /*<<< orphan*/  command_status; } ;
struct ciss_command {int /*<<< orphan*/ * sg; } ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_CMD_STATUS_HARDWARE_ERROR ; 
 int /*<<< orphan*/  CISS_FLAG_RUNNING ; 
 int CISS_REQ_BUSY ; 
 int CISS_REQ_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct ciss_softc*) ; 
 struct ciss_request* FUNC1 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*) ; 

__attribute__((used)) static void
FUNC6(struct ciss_softc *sc)
{
    cr_qhead_t			qh;
    struct ciss_request		*cr;
    struct ciss_command		*cc;
    struct ciss_error_info	*ce;
    int				i;

    FUNC0(sc);
    FUNC3(sc->ciss_dev);
    sc->ciss_flags &= ~CISS_FLAG_RUNNING;

    for (i = 1; i < sc->ciss_max_requests; i++) {
	cr = &sc->ciss_request[i];
	if ((cr->cr_flags & CISS_REQ_BUSY) == 0)
	    continue;

	cc = cr->cr_cc;
	ce = (struct ciss_error_info *)&(cc->sg[0]);
	ce->command_status = CISS_CMD_STATUS_HARDWARE_ERROR;
	FUNC2(cr, &qh);
    }

    for (;;) {
	if ((cr = FUNC1(sc, &qh)) == NULL)
	    break;
    
	/*
	 * If the request has a callback, invoke it.
	 */
	if (cr->cr_complete != NULL) {
	    cr->cr_complete(cr);
	    continue;
	}

	/*
	 * If someone is sleeping on this request, wake them up.
	 */
	if (cr->cr_flags & CISS_REQ_SLEEP) {
	    cr->cr_flags &= ~CISS_REQ_SLEEP;
	    FUNC5(cr);
	    continue;
	}
    }
}