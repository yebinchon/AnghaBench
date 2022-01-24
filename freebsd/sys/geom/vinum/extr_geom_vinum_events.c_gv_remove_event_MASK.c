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
struct gv_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gv_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  events ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct gv_softc *sc, struct gv_event *ev)
{

	FUNC0(sc != NULL, ("NULL sc"));
	FUNC0(ev != NULL, ("NULL ev"));
	FUNC2(&sc->equeue_mtx);
	FUNC1(&sc->equeue, ev, events);
	FUNC3(&sc->equeue_mtx);
}