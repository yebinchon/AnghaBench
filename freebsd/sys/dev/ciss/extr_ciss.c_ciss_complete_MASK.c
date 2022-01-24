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
struct ciss_softc {int dummy; } ;
struct ciss_request {int cr_flags; int /*<<< orphan*/  (* cr_complete ) (struct ciss_request*) ;} ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int CISS_REQ_BUSY ; 
 int CISS_REQ_POLL ; 
 int CISS_REQ_SLEEP ; 
 struct ciss_request* FUNC0 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ciss_request*) ; 

__attribute__((used)) static void
FUNC7(struct ciss_softc *sc, cr_qhead_t *qh)
{
    struct ciss_request	*cr;

    FUNC4(2);

    /*
     * Loop taking requests off the completed queue and performing
     * completion processing on them.
     */
    for (;;) {
	if ((cr = FUNC0(sc, qh)) == NULL)
	    break;
	FUNC3(cr);

	if ((cr->cr_flags & CISS_REQ_BUSY) == 0)
	    FUNC2(sc, "WARNING: completing non-busy request\n");
	cr->cr_flags &= ~CISS_REQ_BUSY;

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
	    FUNC6(cr);
	    continue;
	}

	/*
	 * If someone is polling this request for completion, signal.
	 */
	if (cr->cr_flags & CISS_REQ_POLL) {
	    cr->cr_flags &= ~CISS_REQ_POLL;
	    continue;
	}

	/*
	 * Give up and throw the request back on the free queue.  This
	 * should never happen; resources will probably be lost.
	 */
	FUNC2(sc, "WARNING: completed command with no submitter\n");
	FUNC1(cr);
    }
}