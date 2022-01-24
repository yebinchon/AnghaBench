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
struct g_rr_softc {int /*<<< orphan*/  sc_rr_tailq; int /*<<< orphan*/ * sc_active; int /*<<< orphan*/  sc_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  units; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_rr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GEOM_SCHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct g_rr_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__ me ; 
 int /*<<< orphan*/  sc_next ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	struct g_rr_softc *sc = data;

	FUNC3(&sc->sc_wait);
	FUNC0(sc->sc_active == NULL, ("still a queue under service"));
	FUNC0(FUNC2(&sc->sc_rr_tailq), ("still scheduled queues"));

	FUNC1(sc, sc_next);
	me.units--;
	FUNC4(sc, M_GEOM_SCHED);
}