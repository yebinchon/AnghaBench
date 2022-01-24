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
struct tws_softc {int /*<<< orphan*/  q_lock; } ;
struct tws_request {struct tws_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWS_FREE_Q ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct tws_request *req)
{

    struct tws_softc *sc = req->sc;

    FUNC0(sc, "entry", sc, 0);
    FUNC1(&sc->q_lock);
    FUNC3(sc, req, TWS_FREE_Q);
    FUNC2(&sc->q_lock);
}