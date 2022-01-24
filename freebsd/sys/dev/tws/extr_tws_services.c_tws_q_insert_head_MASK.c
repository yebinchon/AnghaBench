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
typedef  size_t u_int8_t ;
struct tws_softc {struct tws_request** q_head; int /*<<< orphan*/  q_lock; } ;
struct tws_request {struct tws_request* prev; struct tws_request* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,struct tws_request*,size_t) ; 

void
FUNC2(struct tws_softc *sc, struct tws_request *req, 
                                u_int8_t q_type )
{

    FUNC0(&sc->q_lock, MA_OWNED);
    if ( sc->q_head[q_type] == NULL ) {
        FUNC1(sc, req, q_type);
    } else {
        req->next = sc->q_head[q_type];
        req->prev = NULL;
        sc->q_head[q_type]->prev = req;
        sc->q_head[q_type] = req;
    }

}