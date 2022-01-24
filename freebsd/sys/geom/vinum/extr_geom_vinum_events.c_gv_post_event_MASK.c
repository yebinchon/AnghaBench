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
struct gv_softc {int /*<<< orphan*/  equeue_mtx; int /*<<< orphan*/  equeue; } ;
struct gv_event {int type; void* arg4; void* arg3; void* arg2; void* arg1; } ;
typedef  void* intmax_t ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gv_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  events ; 
 struct gv_event* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*) ; 

void
FUNC5(struct gv_softc *sc, int event, void *arg1, void *arg2,
    intmax_t arg3, intmax_t arg4)
{
	struct gv_event *ev;

	ev = FUNC1(sizeof(*ev), M_WAITOK | M_ZERO);
	ev->type = event;
	ev->arg1 = arg1;
	ev->arg2 = arg2;
	ev->arg3 = arg3;
	ev->arg4 = arg4;

	FUNC2(&sc->equeue_mtx);
	FUNC0(&sc->equeue, ev, events);
	FUNC4(sc);
	FUNC3(&sc->equeue_mtx);
}