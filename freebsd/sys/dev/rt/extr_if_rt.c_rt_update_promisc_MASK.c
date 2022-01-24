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
struct rt_softc {int /*<<< orphan*/  dev; } ;
struct ifnet {int if_flags; struct rt_softc* if_softc; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct ifnet *ifp)
{
	struct rt_softc *sc;

	sc = ifp->if_softc;
	FUNC1("%s: %s promiscuous mode\n",
		FUNC0(sc->dev),
		(ifp->if_flags & IFF_PROMISC) ? "entering" : "leaving");
}