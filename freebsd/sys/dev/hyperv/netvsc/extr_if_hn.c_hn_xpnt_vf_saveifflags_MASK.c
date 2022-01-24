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
struct ifnet {int if_flags; int /*<<< orphan*/  if_multiaddrs; } ;
struct hn_softc {TYPE_1__* hn_vf_ifp; struct ifnet* hn_ifp; } ;
struct TYPE_2__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int IFF_ALLMULTI ; 

__attribute__((used)) static void
FUNC2(struct hn_softc *sc)
{
	struct ifnet *ifp = sc->hn_ifp;
	int allmulti = 0;

	FUNC1(sc);

	/* XXX vlan(4) style mcast addr maintenance */
	if (!FUNC0(&ifp->if_multiaddrs))
		allmulti = IFF_ALLMULTI;

	/* Always set the VF's if_flags */
	sc->hn_vf_ifp->if_flags = ifp->if_flags | allmulti;
}