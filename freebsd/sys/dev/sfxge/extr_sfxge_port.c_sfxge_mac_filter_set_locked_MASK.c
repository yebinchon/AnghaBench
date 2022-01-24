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
struct sfxge_port {scalar_t__ mcast_count; int /*<<< orphan*/  lock; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; struct sfxge_port port; struct ifnet* ifnet; } ;
struct ifnet {int if_flags; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_TRUE ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC3(struct sfxge_softc *sc)
{
	struct ifnet *ifp = sc->ifnet;
	struct sfxge_port *port = &sc->port;
	boolean_t all_mulcst;
	int rc;

	FUNC1(&port->lock, MA_OWNED);

	all_mulcst = !!(ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI));

	rc = FUNC2(sc);
	/* Fallback to all multicast if cannot set multicast list */
	if (rc != 0)
		all_mulcst = B_TRUE;

	rc = FUNC0(sc->enp, !!(ifp->if_flags & IFF_PROMISC),
				(port->mcast_count > 0), all_mulcst, B_TRUE);

	return (rc);
}