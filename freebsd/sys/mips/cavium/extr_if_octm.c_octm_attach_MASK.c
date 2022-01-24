#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct octm_softc {int sc_port; int sc_flags; int /*<<< orphan*/  sc_ifmedia; struct ifnet* sc_ifp; int /*<<< orphan*/ * sc_intr; int /*<<< orphan*/  sc_intr_cookie; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; TYPE_5__ if_snd; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; struct octm_softc* if_softc; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_mtu; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {scalar_t__ u64; } ;
typedef  TYPE_2__ cvmx_mixx_irhwm_t ;
struct TYPE_7__ {int ithena; } ;
struct TYPE_9__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_mixx_intena_t ;
struct TYPE_10__ {int /*<<< orphan*/  mac_addr_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_MGMT_PORT_NUM_TX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int OCTEON_IRQ_MII ; 
 int OCTEON_IRQ_MII1 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct octm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct octm_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/  const*) ; 
 struct ifnet* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  octm_init ; 
 int /*<<< orphan*/  octm_ioctl ; 
 int /*<<< orphan*/  octm_medchange ; 
 int /*<<< orphan*/  octm_medstat ; 
 int /*<<< orphan*/  octm_rx_intr ; 
 int /*<<< orphan*/  octm_transmit ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct ifnet *ifp;
	struct octm_softc *sc;
	cvmx_mixx_irhwm_t mixx_irhwm;
	cvmx_mixx_intena_t mixx_intena;
	uint64_t mac;
	int error;
	int irq;
	int rid;

	sc = FUNC13(dev);
	sc->sc_dev = dev;
	sc->sc_port = FUNC14(dev);

	switch (sc->sc_port) {
	case 0:
		irq = OCTEON_IRQ_MII;
		break;
	case 1:
		irq = OCTEON_IRQ_MII1;
		break;
	default:
		FUNC15(dev, "unsupported management port %u.\n", sc->sc_port);
		return (ENXIO);
	}

	/*
	 * Set MAC address for this management port.
	 */
	mac = 0;
	FUNC22((u_int8_t *)&mac + 2, FUNC10()->mac_addr_base, 6);
	mac += sc->sc_port;

	FUNC9(sc->sc_port, mac);

	/* No watermark for input ring.  */
	mixx_irhwm.u64 = 0;
	FUNC11(FUNC1(sc->sc_port), mixx_irhwm.u64);

	/* Enable input ring interrupts.  */
	mixx_intena.u64 = 0;
	mixx_intena.s.ithena = 1;
	FUNC11(FUNC0(sc->sc_port), mixx_intena.u64);

	/* Allocate and establish interrupt.  */
	rid = 0;
	sc->sc_intr = FUNC4(sc->sc_dev, SYS_RES_IRQ, &rid,
	    irq, irq, 1, RF_ACTIVE);
	if (sc->sc_intr == NULL) {
		FUNC15(dev, "unable to allocate IRQ.\n");
		return (ENXIO);
	}

	error = FUNC8(sc->sc_dev, sc->sc_intr, INTR_TYPE_NET, NULL,
	    octm_rx_intr, sc, &sc->sc_intr_cookie);
	if (error != 0) {
		FUNC15(dev, "unable to setup interrupt.\n");
		FUNC7(dev, SYS_RES_IRQ, 0, sc->sc_intr);
		return (ENXIO);
	}

	FUNC5(sc->sc_dev, sc->sc_intr, sc->sc_intr_cookie, "rx");

	/* XXX Possibly should enable TX interrupts.  */

	ifp = FUNC17(IFT_ETHER);
	if (ifp == NULL) {
		FUNC15(dev, "cannot allocate ifnet.\n");
		FUNC7(dev, SYS_RES_IRQ, 0, sc->sc_intr);
		return (ENOMEM);
	}

	FUNC18(ifp, FUNC12(dev), FUNC14(dev));
	ifp->if_mtu = ETHERMTU;
	ifp->if_init = octm_init;
	ifp->if_softc = sc;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
	ifp->if_ioctl = octm_ioctl;

	sc->sc_ifp = ifp;
	sc->sc_flags = ifp->if_flags;

	FUNC20(&sc->sc_ifmedia, 0, octm_medchange, octm_medstat);

	FUNC19(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC21(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO);

	FUNC16(ifp, (const u_int8_t *)&mac + 2);

	ifp->if_transmit = octm_transmit;

	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;

	FUNC2(&ifp->if_snd, CVMX_MGMT_PORT_NUM_TX_BUFFERS);
	ifp->if_snd.ifq_drv_maxlen = CVMX_MGMT_PORT_NUM_TX_BUFFERS;
	FUNC3(&ifp->if_snd);

	return (FUNC6(dev));
}