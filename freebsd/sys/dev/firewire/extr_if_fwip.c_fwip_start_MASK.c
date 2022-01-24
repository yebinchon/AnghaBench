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
struct mbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifq_len; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; TYPE_1__ if_snd; scalar_t__ if_softc; } ;
struct fwip_softc {scalar_t__ dma_ch; } ;
struct fwip_eth_softc {struct fwip_softc* fwip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwip_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp)
{
	struct fwip_softc *fwip = ((struct fwip_eth_softc *)ifp->if_softc)->fwip;
	int s;

	FUNC0(ifp, "starting\n");

	if (fwip->dma_ch < 0) {
		struct mbuf	*m = NULL;

		FUNC0(ifp, "not ready\n");

		s = FUNC5();
		do {
			FUNC1(&ifp->if_snd, m);
			if (m != NULL)
				FUNC4(m);
			FUNC3(ifp, IFCOUNTER_OERRORS, 1);
		} while (m != NULL);
		FUNC6(s);

		return;
	}

	s = FUNC5();
	ifp->if_drv_flags |= IFF_DRV_OACTIVE;

	if (ifp->if_snd.ifq_len != 0)
		FUNC2(fwip, ifp);

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC6(s);
}