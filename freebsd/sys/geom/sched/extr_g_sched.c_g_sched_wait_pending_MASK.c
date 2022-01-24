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
struct g_sched_softc {scalar_t__ sc_pending; int /*<<< orphan*/  sc_mtx; } ;
struct g_geom {struct g_sched_softc* softc; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct g_geom*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int ticks ; 

__attribute__((used)) static int
FUNC2(struct g_geom *gp)
{
	struct g_sched_softc *sc = gp->softc;
	int endticks = ticks + hz;

	FUNC0();

	while (sc->sc_pending && endticks - ticks >= 0)
		FUNC1(gp, &sc->sc_mtx, 0, "sched_wait_pending", hz / 4);

	return (sc->sc_pending ? ETIMEDOUT : 0);
}