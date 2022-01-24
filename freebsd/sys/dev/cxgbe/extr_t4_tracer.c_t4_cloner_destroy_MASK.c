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
struct ifnet {int if_dunit; struct adapter* if_softc; } ;
struct if_clone {int dummy; } ;
struct adapter {int /*<<< orphan*/  media; int /*<<< orphan*/  ifp_lock; int /*<<< orphan*/ * ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_clone*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t4_trace_lock ; 

__attribute__((used)) static int
FUNC8(struct if_clone *ifc, struct ifnet *ifp)
{
	struct adapter *sc;
	int unit = ifp->if_dunit;

	FUNC6(&t4_trace_lock);
	sc = ifp->if_softc;
	if (sc != NULL) {
		FUNC4(&sc->ifp_lock);
		sc->ifp = NULL;
		ifp->if_softc = NULL;
		FUNC5(&sc->ifp_lock);
		FUNC3(&sc->media);
	}
	FUNC0(ifp);
	FUNC1(ifp);
	FUNC2(ifc, unit);
	FUNC7(&t4_trace_lock);

	return (0);
}