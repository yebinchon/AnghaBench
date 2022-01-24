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
struct lagg_softc {scalar_t__ sc_proto; struct ifnet* sc_ifp; } ;
struct lagg_port {scalar_t__ lp_detaching; struct lagg_softc* lp_softc; } ;
struct ifnet {int if_drv_flags; int if_flags; struct lagg_port* if_lagg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_RUNNING ; 
 int IFF_MONITOR ; 
 scalar_t__ LAGG_PROTO_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct mbuf* FUNC3 (struct lagg_softc*,struct lagg_port*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static struct mbuf *
FUNC5(struct ifnet *ifp, struct mbuf *m)
{
	struct lagg_port *lp = ifp->if_lagg;
	struct lagg_softc *sc = lp->lp_softc;
	struct ifnet *scifp = sc->sc_ifp;

	FUNC1();
	if ((scifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    lp->lp_detaching != 0 ||
	    sc->sc_proto == LAGG_PROTO_NONE) {
		FUNC2();
		FUNC4(m);
		return (NULL);
	}

	FUNC0(scifp, m);

	m = FUNC3(sc, lp, m);
	if (m != NULL && (scifp->if_flags & IFF_MONITOR) != 0) {
		FUNC4(m);
		m = NULL;
	}

	FUNC2();
	return (m);
}