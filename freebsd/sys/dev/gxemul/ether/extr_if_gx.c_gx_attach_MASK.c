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
typedef  int /*<<< orphan*/  uint8_t ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; struct gx_softc* if_softc; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_mtu; } ;
struct gx_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ifmedia; struct ifnet* sc_ifp; int /*<<< orphan*/ * sc_intr; int /*<<< orphan*/  sc_intr_cookie; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_port; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERMTU ; 
 scalar_t__ GXEMUL_ETHER_DEV_IRQ ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gx_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct gx_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gx_init ; 
 int /*<<< orphan*/  gx_ioctl ; 
 int /*<<< orphan*/  gx_medchange ; 
 int /*<<< orphan*/  gx_medstat ; 
 int /*<<< orphan*/  gx_rx_intr ; 
 int /*<<< orphan*/  gx_transmit ; 
 struct ifnet* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ifnet *ifp;
	struct gx_softc *sc;
	uint8_t mac[6];
	int error;
	int rid;

	sc = FUNC7(dev);
	sc->sc_dev = dev;
	sc->sc_port = FUNC8(dev);

	/* Read MAC address.  */
	FUNC0(GXEMUL_ETHER_DEV_MAC, (uintptr_t)mac);

	/* Allocate and establish interrupt.  */
	rid = 0;
	sc->sc_intr = FUNC1(sc->sc_dev, SYS_RES_IRQ, &rid,
	    GXEMUL_ETHER_DEV_IRQ - 2, GXEMUL_ETHER_DEV_IRQ - 2, 1, RF_ACTIVE);
	if (sc->sc_intr == NULL) {
		FUNC9(dev, "unable to allocate IRQ.\n");
		return (ENXIO);
	}

	error = FUNC5(sc->sc_dev, sc->sc_intr, INTR_TYPE_NET, NULL,
	    gx_rx_intr, sc, &sc->sc_intr_cookie);
	if (error != 0) {
		FUNC9(dev, "unable to setup interrupt.\n");
		FUNC4(dev, SYS_RES_IRQ, 0, sc->sc_intr);
		return (ENXIO);
	}

	FUNC2(sc->sc_dev, sc->sc_intr, sc->sc_intr_cookie, "rx");

	ifp = FUNC11(IFT_ETHER);
	if (ifp == NULL) {
		FUNC9(dev, "cannot allocate ifnet.\n");
		FUNC4(dev, SYS_RES_IRQ, 0, sc->sc_intr);
		return (ENOMEM);
	}

	FUNC12(ifp, FUNC6(dev), FUNC8(dev));
	ifp->if_mtu = ETHERMTU;
	ifp->if_init = gx_init;
	ifp->if_softc = sc;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
	ifp->if_ioctl = gx_ioctl;

	sc->sc_ifp = ifp;
	sc->sc_flags = ifp->if_flags;

	FUNC14(&sc->sc_ifmedia, 0, gx_medchange, gx_medstat);

	FUNC13(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC15(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO);

	FUNC16(&sc->sc_mtx, "GXemul Ethernet", NULL, MTX_DEF);

	FUNC10(ifp, mac);

	ifp->if_transmit = gx_transmit;

	return (FUNC3(dev));
}