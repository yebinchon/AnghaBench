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
struct tws_softc {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sim_lock; } ;
struct tws_request {scalar_t__ ccb_ptr; int /*<<< orphan*/  sc; int /*<<< orphan*/  error_code; int /*<<< orphan*/  timeout; int /*<<< orphan*/  request_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_SCSI_BUS_RESET ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  TWS_BUSY_Q ; 
 int /*<<< orphan*/  TWS_FREE_Q ; 
 int /*<<< orphan*/  TWS_REQ_RET_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 struct tws_request* FUNC5 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tws_request*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct tws_softc *sc)
{
    struct tws_request *req;
    union ccb          *ccb;
    FUNC0(sc, "entry", 0, 0);

    FUNC2(&sc->q_lock);
    req = FUNC5(sc, TWS_BUSY_Q);
    FUNC3(&sc->q_lock);
    while ( req ) {
        FUNC0(sc, "moved to TWS_COMPLETE_Q", 0, req->request_id);
	FUNC1(&req->timeout);

        req->error_code = TWS_REQ_RET_RESET;
        ccb = (union ccb *)(req->ccb_ptr);

        ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
        ccb->ccb_h.status |=  CAM_REQUEUE_REQ;
        ccb->ccb_h.status |=  CAM_SCSI_BUS_RESET;

        FUNC6(req->sc, req);

        FUNC2(&sc->sim_lock);
        FUNC7(req->ccb_ptr);
        FUNC3(&sc->sim_lock);

        FUNC2(&sc->q_lock);
        FUNC4(sc, req, TWS_FREE_Q);
        req = FUNC5(sc, TWS_BUSY_Q);
        FUNC3(&sc->q_lock);
    } 
}