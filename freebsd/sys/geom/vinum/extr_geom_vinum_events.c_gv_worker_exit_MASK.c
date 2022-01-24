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
struct gv_softc {int /*<<< orphan*/  equeue_mtx; int /*<<< orphan*/  worker; int /*<<< orphan*/  equeue; } ;
struct gv_event {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_THREAD_EXIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PDROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gv_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  events ; 
 struct gv_event* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*) ; 

void
FUNC5(struct gv_softc *sc)
{
	struct gv_event *ev;

	ev = FUNC1(sizeof(*ev), M_WAITOK | M_ZERO);
	ev->type = GV_EVENT_THREAD_EXIT;

	FUNC3(&sc->equeue_mtx);
	FUNC0(&sc->equeue, ev, events);
	FUNC4(sc);
	FUNC2(sc->worker, &sc->equeue_mtx, PDROP, "gv_wor", 0);
}