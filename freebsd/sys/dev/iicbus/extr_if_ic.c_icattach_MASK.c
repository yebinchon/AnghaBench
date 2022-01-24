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
struct TYPE_2__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; scalar_t__ if_addrlen; scalar_t__ if_hdrlen; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_ioctl; struct ic_softc* if_softc; } ;
struct ic_softc {int /*<<< orphan*/  ic_dev; int /*<<< orphan*/  ic_addr; int /*<<< orphan*/  ic_lock; struct ifnet* ic_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_NULL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  ICHDRLEN ; 
 int /*<<< orphan*/  ICMTU ; 
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_PARA ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  PCF_MASTER_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icioctl ; 
 int /*<<< orphan*/  icoutput ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ic_softc *sc = (struct ic_softc *)FUNC3(dev);
	struct ifnet *ifp;

	ifp = sc->ic_ifp = FUNC6(IFT_PARA);
	if (ifp == NULL)
		return (ENOSPC);

	FUNC9(&sc->ic_lock, FUNC2(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	sc->ic_addr = PCF_MASTER_ADDRESS;	/* XXX only PCF masters */
	sc->ic_dev = dev;

	ifp->if_softc = sc;
	FUNC8(ifp, FUNC1(dev), FUNC4(dev));
	ifp->if_flags = IFF_SIMPLEX | IFF_POINTOPOINT | IFF_MULTICAST;
	ifp->if_ioctl = icioctl;
	ifp->if_output = icoutput;
	ifp->if_hdrlen = 0;
	ifp->if_addrlen = 0;
	ifp->if_snd.ifq_maxlen = ifqmaxlen;

	FUNC5(sc, ICMTU);

	FUNC7(ifp);

	FUNC0(ifp, DLT_NULL, ICHDRLEN);

	return (0);
}