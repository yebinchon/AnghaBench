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
struct adapter {int /*<<< orphan*/  media; int /*<<< orphan*/  ifp_lock; TYPE_1__* ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t4_trace_lock ; 

void
FUNC5(struct adapter *sc)
{

	FUNC3(&t4_trace_lock);
	if (sc->ifp != NULL) {
		FUNC1(&sc->ifp_lock);
		sc->ifp->if_softc = NULL;
		sc->ifp = NULL;
		FUNC2(&sc->ifp_lock);
	}
	FUNC0(&sc->media);
	FUNC4(&t4_trace_lock);
}