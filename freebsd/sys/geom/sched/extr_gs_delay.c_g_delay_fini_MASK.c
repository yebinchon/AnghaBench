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
struct g_delay_softc {int /*<<< orphan*/  sc_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  units; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GEOM_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_delay_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__ me ; 

__attribute__((used)) static void
FUNC2(void *data)
{
	struct g_delay_softc *sc = data;

	/* We're force drained before getting here */

	/* Kick out timers */
	FUNC0(&sc->sc_wait);
	me.units--;
	FUNC1(sc, M_GEOM_SCHED);
}