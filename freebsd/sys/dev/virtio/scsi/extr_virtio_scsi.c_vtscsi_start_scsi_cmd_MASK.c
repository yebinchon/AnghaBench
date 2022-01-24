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
struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {union ccb* vsr_ccb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  VTSCSI_REQUEST ; 
 struct vtscsi_request* FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int FUNC2 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vtscsi_softc *sc, union ccb *ccb)
{
	struct vtscsi_request *req;
	int error;

	req = FUNC0(sc);
	if (req == NULL) {
		ccb->ccb_h.status = CAM_REQUEUE_REQ;
		FUNC3(sc, VTSCSI_REQUEST);
		return (ENOBUFS);
	}

	req->vsr_ccb = ccb;

	error = FUNC2(sc, req);
	if (error)
		FUNC1(sc, req);

	return (error);
}