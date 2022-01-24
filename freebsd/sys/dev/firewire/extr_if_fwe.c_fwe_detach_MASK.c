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
struct ifnet {int if_capenable; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct fwe_softc {int /*<<< orphan*/  mtx; TYPE_1__ eth_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 struct fwe_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct fwe_softc *fwe;
	struct ifnet *ifp;
	int s;

	fwe = FUNC0(dev);
	ifp = fwe->eth_softc.ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif
	s = FUNC6();

	FUNC3(fwe);
	FUNC1(ifp);
	FUNC4(ifp);

	FUNC7(s);
	FUNC5(&fwe->mtx);
	return 0;
}