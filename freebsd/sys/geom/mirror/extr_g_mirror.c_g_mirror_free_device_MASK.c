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
struct g_mirror_softc {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_done_mtx; int /*<<< orphan*/  sc_events_mtx; int /*<<< orphan*/  sc_queue_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (struct g_mirror_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct g_mirror_softc *sc)
{

	FUNC1();

	FUNC2(&sc->sc_queue_mtx);
	FUNC2(&sc->sc_events_mtx);
	FUNC2(&sc->sc_done_mtx);
	FUNC3(&sc->sc_lock);
	FUNC0(sc, M_MIRROR);
}