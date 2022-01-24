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
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; struct gx_softc* if_softc; } ;
struct gx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_BUFFER ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_COMMAND ; 
 int GXEMUL_ETHER_DEV_COMMAND_TX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct gx_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, struct mbuf *m)
{
	struct gx_softc *sc;

	sc = ifp->if_softc;

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING) {
		FUNC7(m);
		return (0);
	}

	FUNC3(sc);
	FUNC2(GXEMUL_ETHER_DEV_LENGTH, m->m_pkthdr.len);
	FUNC6(m, 0, m->m_pkthdr.len, (void *)(uintptr_t)FUNC1(GXEMUL_ETHER_DEV_BUFFER));
	FUNC2(GXEMUL_ETHER_DEV_COMMAND, GXEMUL_ETHER_DEV_COMMAND_TX);
	FUNC4(sc);

	FUNC0(ifp, m);

	FUNC5(ifp, IFCOUNTER_OPACKETS, 1);
	FUNC5(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);

	FUNC7(m);

	return (0);
}