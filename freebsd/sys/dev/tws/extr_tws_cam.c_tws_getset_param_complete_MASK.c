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
struct tws_softc {int dummy; } ;
struct tws_request {int /*<<< orphan*/  state; int /*<<< orphan*/  data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  request_id; struct tws_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TWS ; 
 int /*<<< orphan*/  TWS_REQ_STATE_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*,struct tws_request*) ; 

void
FUNC4(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    FUNC0(sc, "getset complete", req, req->request_id);

    FUNC1(&req->timeout);
    FUNC3(sc, req);

    FUNC2(req->data, M_TWS);

    req->state = TWS_REQ_STATE_FREE;
}