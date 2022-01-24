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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct vtscsi_request {int vsr_flags; int /*<<< orphan*/  vsr_callout; union ccb* vsr_ccb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_NO_HBA ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int VTSCSI_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*) ; 
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,struct vtscsi_request*,union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(struct vtscsi_softc *sc, struct vtscsi_request *req)
{
	union ccb *ccb;
	int detach;

	ccb = req->vsr_ccb;

	FUNC6(sc, VTSCSI_TRACE, "req=%p ccb=%p\n", req, ccb);

	/*
	 * The callout must be drained when detaching since the request is
	 * about to be freed. The VTSCSI_MTX must not be held for this in
	 * case the callout is pending because there is a deadlock potential.
	 * Otherwise, the virtqueue is being drained because of a bus reset
	 * so we only need to attempt to stop the callouts.
	 */
	detach = (sc->vtscsi_flags & VTSCSI_FLAG_DETACH) != 0;
	if (detach != 0)
		FUNC1(sc);
	else
		FUNC2(sc);

	if (req->vsr_flags & VTSCSI_REQ_FLAG_TIMEOUT_SET) {
		if (detach != 0)
			FUNC4(&req->vsr_callout);
		else
			FUNC5(&req->vsr_callout);
	}

	if (ccb != NULL) {
		if (detach != 0) {
			FUNC0(sc);
			ccb->ccb_h.status = CAM_NO_HBA;
		} else
			ccb->ccb_h.status = CAM_REQUEUE_REQ;
		FUNC8(ccb);
		if (detach != 0)
			FUNC3(sc);
	}

	FUNC7(sc, req);
}