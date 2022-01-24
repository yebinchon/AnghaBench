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
typedef  int /*<<< orphan*/  uint32_t ;
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  TSEC_RCTRL_PROM ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_RCTRL ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct tsec_softc *sc)
{
	struct ifnet *ifp;
	uint32_t flags;

	ifp = sc->tsec_ifp;
	flags = FUNC0(sc, TSEC_REG_RCTRL);

	/* Promiscuous mode */
	if (ifp->if_flags & IFF_PROMISC)
		flags |= TSEC_RCTRL_PROM;
	else
		flags &= ~TSEC_RCTRL_PROM;

	FUNC1(sc, TSEC_REG_RCTRL, flags);
}