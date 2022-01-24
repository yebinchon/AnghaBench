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
struct mrsas_softc {int /*<<< orphan*/  sim_lock; scalar_t__ sim_1; scalar_t__ path_1; scalar_t__ sim_0; scalar_t__ path_0; int /*<<< orphan*/ * ev_tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(struct mrsas_softc *sc)
{
	if (sc->ev_tq != NULL)
		FUNC4(sc->ev_tq);
	FUNC2(&sc->sim_lock);
	if (sc->path_0)
		FUNC6(sc->path_0);
	if (sc->sim_0) {
		FUNC5(FUNC1(sc->sim_0));
		FUNC0(sc->sim_0, FALSE);
	}
	if (sc->path_1)
		FUNC6(sc->path_1);
	if (sc->sim_1) {
		FUNC5(FUNC1(sc->sim_1));
		FUNC0(sc->sim_1, TRUE);
	}
	FUNC3(&sc->sim_lock);
}