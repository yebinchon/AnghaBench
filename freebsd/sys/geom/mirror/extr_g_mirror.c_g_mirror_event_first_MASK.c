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
struct g_mirror_softc {int /*<<< orphan*/  sc_events_mtx; int /*<<< orphan*/  sc_events; } ;
struct g_mirror_event {int dummy; } ;

/* Variables and functions */
 struct g_mirror_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct g_mirror_event *
FUNC3(struct g_mirror_softc *sc)
{
	struct g_mirror_event *ep;

	FUNC1(&sc->sc_events_mtx);
	ep = FUNC0(&sc->sc_events);
	FUNC2(&sc->sc_events_mtx);
	return (ep);
}