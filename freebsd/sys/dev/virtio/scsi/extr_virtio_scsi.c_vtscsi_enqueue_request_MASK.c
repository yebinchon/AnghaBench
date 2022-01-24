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
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_req_free; int /*<<< orphan*/  vtscsi_sim; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_uresp; int /*<<< orphan*/  vsr_ureq; scalar_t__ vsr_flags; int /*<<< orphan*/  vsr_state; int /*<<< orphan*/ * vsr_ptr0; int /*<<< orphan*/ * vsr_complete; int /*<<< orphan*/ * vsr_ccb; struct vtscsi_softc* vsr_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vtscsi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VTSCSI_REQUEST ; 
 int /*<<< orphan*/  VTSCSI_REQ_STATE_FREE ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vsr_link ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,struct vtscsi_request*) ; 
 scalar_t__ FUNC4 (struct vtscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct vtscsi_softc *sc, struct vtscsi_request *req)
{

	FUNC0(req->vsr_softc == sc,
	    ("non-matching request vsr_softc %p/%p", req->vsr_softc, sc));

	FUNC3(sc, VTSCSI_TRACE, "req=%p\n", req);

	/* A request is available so the SIMQ could be released. */
	if (FUNC4(sc, VTSCSI_REQUEST) != 0)
		FUNC5(sc->vtscsi_sim, 1);

	req->vsr_ccb = NULL;
	req->vsr_complete = NULL;
	req->vsr_ptr0 = NULL;
	req->vsr_state = VTSCSI_REQ_STATE_FREE;
	req->vsr_flags = 0;

	FUNC2(&req->vsr_ureq, sizeof(req->vsr_ureq));
	FUNC2(&req->vsr_uresp, sizeof(req->vsr_uresp));

	/*
	 * We insert at the tail of the queue in order to make it
	 * very unlikely a request will be reused if we race with
	 * stopping its callout handler.
	 */
	FUNC1(&sc->vtscsi_req_free, req, vsr_link);
}