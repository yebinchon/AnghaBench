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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; struct atse_softc* if_softc; } ;
struct buf_ring {int dummy; } ;
struct atse_softc {int atse_flags; int /*<<< orphan*/  br_mtx; struct buf_ring* br; } ;

/* Variables and functions */
 int ATSE_FLAGS_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC2 (struct ifnet*) ; 
 int FUNC3 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, struct mbuf *m)
{
	struct atse_softc *sc;
	struct buf_ring *br;
	int error;

	sc = ifp->if_softc;
	br = sc->br;

	FUNC0(sc);

	FUNC4(&sc->br_mtx);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) != IFF_DRV_RUNNING) {
		error = FUNC3(ifp, sc->br, m);
		FUNC5(&sc->br_mtx);
		FUNC1(sc);
		return (error);
	}

	if ((sc->atse_flags & ATSE_FLAGS_LINK) == 0) {
		error = FUNC3(ifp, sc->br, m);
		FUNC5(&sc->br_mtx);
		FUNC1(sc);
		return (error);
	}

	error = FUNC3(ifp, br, m);
	if (error) {
		FUNC5(&sc->br_mtx);
		FUNC1(sc);
		return (error);
	}
	error = FUNC2(ifp);

	FUNC5(&sc->br_mtx);
	FUNC1(sc);

	return (error);
}