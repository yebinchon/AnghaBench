#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nf10bmac_softc {int /*<<< orphan*/ * nf10bmac_rx_irq_res; int /*<<< orphan*/  nf10bmac_rx_intrhand; int /*<<< orphan*/  nf10bmac_media; int /*<<< orphan*/  nf10bmac_eth_addr; struct ifnet* nf10bmac_ifp; int /*<<< orphan*/  nf10bmac_tx_buf; int /*<<< orphan*/  nf10bmac_mtx; int /*<<< orphan*/  nf10bmac_tick; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct nf10bmac_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHER_MAX_LEN_JUMBO ; 
 int IFCAP_POLLING ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_SIMPLEX ; 
 int IFM_10G_T ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ NF10BMAC_MAX_PKTS ; 
 int /*<<< orphan*/  FUNC2 (struct nf10bmac_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nf10bmac_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct nf10bmac_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct ifnet*) ; 
 struct ifnet* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf10bmac_init ; 
 int /*<<< orphan*/  nf10bmac_intr ; 
 int /*<<< orphan*/  nf10bmac_ioctl ; 
 int /*<<< orphan*/  nf10bmac_media_change ; 
 int /*<<< orphan*/  nf10bmac_media_status ; 
 int /*<<< orphan*/  nf10bmac_poll ; 
 int /*<<< orphan*/  FUNC21 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  nf10bmac_start ; 

int
FUNC22(device_t dev)
{
	struct nf10bmac_softc *sc;
	struct ifnet *ifp;
	int error;

	sc = FUNC7(dev);

	FUNC19(&sc->nf10bmac_mtx, FUNC6(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);

#ifdef	ENABLE_WATCHDOG
	callout_init_mtx(&sc->nf10bmac_tick, &sc->nf10bmac_mtx, 0);
#endif

	sc->nf10bmac_tx_buf = FUNC18(ETHER_MAX_LEN_JUMBO, M_DEVBUF, M_WAITOK);

	/* Reset the adapter. */
	FUNC21(sc);

	/* Setup interface. */
	ifp = sc->nf10bmac_ifp = FUNC13(IFT_ETHER);
	if (ifp == NULL) {   
		FUNC9(dev, "if_alloc() failed\n");
		error = ENOSPC;
		goto err;
	}
	ifp->if_softc = sc;
	FUNC14(ifp, FUNC5(dev), FUNC8(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX; /* | IFF_MULTICAST; */
	ifp->if_ioctl = nf10bmac_ioctl;
	ifp->if_start = nf10bmac_start;
	ifp->if_init = nf10bmac_init;
	FUNC0(&ifp->if_snd, NF10BMAC_MAX_PKTS - 1);
	ifp->if_snd.ifq_drv_maxlen = NF10BMAC_MAX_PKTS - 1;
	FUNC1(&ifp->if_snd);

	/* Call media-indepedent attach routine. */
	FUNC10(ifp, sc->nf10bmac_eth_addr);

	/* Tell the upper layer(s) about vlan mtu support. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	/* We will enable polling by default if no irqs available. See below. */
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	/* We need more media attention.  Fake it! */
        FUNC16(&sc->nf10bmac_media, 0, nf10bmac_media_change,
	    nf10bmac_media_status);
        FUNC15(&sc->nf10bmac_media, IFM_ETHER | IFM_10G_T, 0, NULL);
        FUNC17(&sc->nf10bmac_media, IFM_ETHER | IFM_10G_T);

	/* Initialise. */
	error = 0;

	/* Hook up interrupts. Well the one. */
	if (sc->nf10bmac_rx_irq_res != NULL) {
		error = FUNC3(dev, sc->nf10bmac_rx_irq_res,
		    INTR_TYPE_NET | INTR_MPSAFE, NULL, nf10bmac_intr,
		    sc, &sc->nf10bmac_rx_intrhand);
		if (error != 0) {
			FUNC9(dev, "enabling RX IRQ failed\n");
			FUNC11(ifp);
			goto err;
		}
	}

	if ((ifp->if_capenable & IFCAP_POLLING) != 0 ||
	    sc->nf10bmac_rx_irq_res == NULL) {
#ifdef DEVICE_POLLING
		/* If not on and no IRQs force it on. */
		if (sc->nf10bmac_rx_irq_res == NULL) {
			ifp->if_capenable |= IFCAP_POLLING;
			device_printf(dev,
			    "forcing to polling due to no interrupts\n");
		}
		error = ether_poll_register(nf10bmac_poll, ifp);
		if (error != 0)
			goto err;
#else
		FUNC9(dev, "no DEVICE_POLLING in kernel and no IRQs\n");
		error = ENXIO;
#endif
	} else {
		FUNC2(sc);
	}

err:
	if (error != 0)
		FUNC20(dev);

	return (error);                                                                                                                                                                      
}