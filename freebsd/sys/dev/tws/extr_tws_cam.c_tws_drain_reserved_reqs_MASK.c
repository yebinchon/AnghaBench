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
struct tws_softc {struct tws_request* reqs; } ;
struct tws_request {scalar_t__ state; void* error_code; int /*<<< orphan*/  data; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TWS ; 
 void* TWS_REQ_RET_RESET ; 
 scalar_t__ TWS_REQ_STATE_BUSY ; 
 scalar_t__ TWS_REQ_STATE_FREE ; 
 size_t TWS_REQ_TYPE_AEN_FETCH ; 
 size_t TWS_REQ_TYPE_GETSET_PARAM ; 
 size_t TWS_REQ_TYPE_PASSTHRU ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*,struct tws_request*) ; 

__attribute__((used)) static void
FUNC4(struct tws_softc *sc)
{
    struct tws_request *r;

    r = &sc->reqs[TWS_REQ_TYPE_AEN_FETCH];
    if ( r->state != TWS_REQ_STATE_FREE ) {
        FUNC0(sc, "reset aen req", 0, 0);
	FUNC1(&r->timeout);
        FUNC3(sc, r);
        FUNC2(r->data, M_TWS);
        r->state = TWS_REQ_STATE_FREE;
        r->error_code = TWS_REQ_RET_RESET;
    } 

    r = &sc->reqs[TWS_REQ_TYPE_PASSTHRU];
    if ( r->state == TWS_REQ_STATE_BUSY ) {
        FUNC0(sc, "reset passthru req", 0, 0);
        r->error_code = TWS_REQ_RET_RESET;
    } 

    r = &sc->reqs[TWS_REQ_TYPE_GETSET_PARAM];
    if ( r->state != TWS_REQ_STATE_FREE ) {
        FUNC0(sc, "reset setparam req", 0, 0);
	FUNC1(&r->timeout);
        FUNC3(sc, r);
        FUNC2(r->data, M_TWS);
        r->state = TWS_REQ_STATE_FREE;
        r->error_code = TWS_REQ_RET_RESET;
    } 
}