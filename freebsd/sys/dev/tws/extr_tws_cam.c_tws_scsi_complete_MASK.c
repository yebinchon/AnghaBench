#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tws_softc {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sim_lock; } ;
struct tws_request {TYPE_2__* ccb_ptr; struct tws_softc* sc; int /*<<< orphan*/  timeout; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  TWS_BUSY_Q ; 
 int /*<<< orphan*/  TWS_FREE_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*,struct tws_request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    FUNC1(&sc->q_lock);
    FUNC4(sc, req, TWS_BUSY_Q);
    FUNC2(&sc->q_lock);

    FUNC0(&req->timeout);
    FUNC5(req->sc, req);


    req->ccb_ptr->ccb_h.status = CAM_REQ_CMP;
    FUNC1(&sc->sim_lock);
    FUNC6(req->ccb_ptr);
    FUNC2(&sc->sim_lock);

    FUNC1(&sc->q_lock);
    FUNC3(sc, req, TWS_FREE_Q);
    FUNC2(&sc->q_lock);
}