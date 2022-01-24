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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct are_softc* if_softc; } ;
struct are_softc {int* are_eaddr; int are_rid; int are_if_flags; int /*<<< orphan*/  are_intrhand; int /*<<< orphan*/ * are_irq; int /*<<< orphan*/  are_ifmedia; int /*<<< orphan*/  are_miibus; int /*<<< orphan*/  are_dev; int /*<<< orphan*/  are_miiproxy; struct ifnet* are_ifp; int /*<<< orphan*/ * are_res; int /*<<< orphan*/  are_bhandle; int /*<<< orphan*/  are_btag; int /*<<< orphan*/  are_link_task; int /*<<< orphan*/  are_mtx; int /*<<< orphan*/  are_stat_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AR5312_IRQ_ENET0 ; 
 int AR5312_IRQ_ENET1 ; 
 int AR5315_CPU_IRQ_ENET ; 
 scalar_t__ AR531X_SOC_AR5315 ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUSMODE_SWR ; 
 int /*<<< orphan*/  CSR_BUSMODE ; 
 int /*<<< orphan*/  FUNC0 (struct are_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct are_softc*) ; 
 scalar_t__ ar531x_soc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct are_softc*) ; 
 int /*<<< orphan*/  are_ifmedia_sts ; 
 int /*<<< orphan*/  are_ifmedia_upd ; 
 int /*<<< orphan*/  are_init ; 
 int /*<<< orphan*/  are_intr ; 
 int /*<<< orphan*/  are_ioctl ; 
 int /*<<< orphan*/  are_link_task ; 
 int /*<<< orphan*/  are_start ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct are_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct are_softc*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct are_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*) ; 
 struct ifnet* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (char*,char*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC30(device_t dev)
{
	struct ifnet		*ifp;
	struct are_softc		*sc;
	int			error = 0;
#ifdef INTRNG
	int			enetirq;
#else
	int			rid;
#endif
	int			unit;
	char *			local_macstr;
	int			count;
	int			i;

	sc = FUNC13(dev);
	unit = FUNC14(dev);
	sc->are_dev = dev;

	/* hardcode macaddress */
	sc->are_eaddr[0] = 0x00;
	sc->are_eaddr[1] = 0x0C;
	sc->are_eaddr[2] = 0x42;
	sc->are_eaddr[3] = 0x09;
	sc->are_eaddr[4] = 0x5E;
	sc->are_eaddr[5] = 0x6B;

	/* try to get from hints */
	if (!FUNC26(FUNC11(dev),
		FUNC14(dev), "macaddr", (const char **)&local_macstr)) {
		uint32_t tmpmac[ETHER_ADDR_LEN];

		/* Have a MAC address; should use it */
		FUNC15(dev, "Overriding MAC address from environment: '%s'\n",
		    local_macstr);

		/* Extract out the MAC address */
		/* XXX this should all be a generic method */
		count = FUNC29(local_macstr, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
		    &tmpmac[0], &tmpmac[1],
		    &tmpmac[2], &tmpmac[3],
		    &tmpmac[4], &tmpmac[5]);
		if (count == 6) {
			/* Valid! */
			for (i = 0; i < ETHER_ADDR_LEN; i++)
				sc->are_eaddr[i] = tmpmac[i];
		}
	}

	FUNC25(&sc->are_mtx, FUNC12(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC9(&sc->are_stat_callout, &sc->are_mtx, 0);
	FUNC4(&sc->are_link_task, 0, are_link_task, sc);

	/* Map control/status registers. */
	sc->are_rid = 0;
	sc->are_res = FUNC7(dev, SYS_RES_MEMORY, &sc->are_rid, 
	    RF_ACTIVE | RF_SHAREABLE);

	if (sc->are_res == NULL) {
		FUNC15(dev, "couldn't map memory\n");
		error = ENXIO;
		goto fail;
	}

	sc->are_btag = FUNC28(sc->are_res);
	sc->are_bhandle = FUNC27(sc->are_res);

#ifndef INTRNG
	/* Allocate interrupts */
	rid = 0;
	sc->are_irq = FUNC7(dev, SYS_RES_IRQ, &rid, 
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->are_irq == NULL) {
		FUNC15(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}
#endif

	/* Allocate ifnet structure. */
	ifp = sc->are_ifp = FUNC18(IFT_ETHER);

	if (ifp == NULL) {
		FUNC15(dev, "couldn't allocate ifnet structure\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC19(ifp, FUNC11(dev), FUNC14(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = are_ioctl;
	ifp->if_start = are_start;
	ifp->if_init = are_init;
	sc->are_if_flags = ifp->if_flags;

	/* ifqmaxlen is sysctl value in net/if.c */
	FUNC2(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_maxlen = ifqmaxlen;
	FUNC3(&ifp->if_snd);

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU;

	ifp->if_capenable = ifp->if_capabilities;

	if (FUNC6(sc) != 0) {
		error = ENXIO;
		goto fail;
	}

	FUNC0(sc, CSR_BUSMODE, BUSMODE_SWR);
	FUNC1(1000);

#ifdef ARE_MDIO
	sc->are_miiproxy = mii_attach_proxy(sc->are_dev);
#endif

#ifdef ARE_MII
	/* Do MII setup. */
	error = mii_attach(dev, &sc->are_miibus, ifp, are_ifmedia_upd,
	    are_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		device_printf(dev, "attaching PHYs failed\n");
		goto fail;
	}
#else
	FUNC21(&sc->are_ifmedia, 0, are_ifmedia_upd, are_ifmedia_sts);

	FUNC20(&sc->are_ifmedia, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC22(&sc->are_ifmedia, IFM_ETHER | IFM_AUTO);
#endif

	/* Call MI attach routine. */
	FUNC16(ifp, sc->are_eaddr);

#ifdef INTRNG
	char *name;
	if (ar531x_soc >= AR531X_SOC_AR5315) {
		enetirq = AR5315_CPU_IRQ_ENET;
		name = "enet";
	} else {
		if (device_get_unit(dev) == 0) {
			enetirq = AR5312_IRQ_ENET0;
			name = "enet0";
		} else {
			enetirq = AR5312_IRQ_ENET1;
			name = "enet1";
		}
	}
	cpu_establish_hardintr(name, NULL, are_intr, sc, enetirq,
	    INTR_TYPE_NET, NULL);
#else
	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC8(dev, sc->are_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, are_intr, sc, &sc->are_intrhand);

	if (error) {
		FUNC15(dev, "couldn't set up irq\n");
		FUNC17(ifp);
		goto fail;
	}
#endif

fail:
	if (error) 
		FUNC5(dev);

	return (error);
}