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
typedef  int uint16_t ;
typedef  int u_char ;
struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_rev; int sis_srr; int /*<<< orphan*/  sis_intrhand; int /*<<< orphan*/ * sis_res; int /*<<< orphan*/  sis_miibus; int /*<<< orphan*/  sis_dev; struct ifnet* sis_ifp; int /*<<< orphan*/  sis_mtx; int /*<<< orphan*/  sis_stat_ch; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct sis_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOSPC ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int /*<<< orphan*/  IFCAP_WOL ; 
 int /*<<< orphan*/  IFCAP_WOL_MAGIC ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  NS_EE_NODEADDR ; 
 int /*<<< orphan*/  NS_SRR ; 
 int NS_SRR_15C ; 
 int NS_SRR_15D ; 
 int NS_SRR_16A ; 
#define  NS_VENDORID 129 
 int /*<<< orphan*/  PCIR_REVID ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIS_CFG_PERR_DETECT ; 
 int /*<<< orphan*/  SIS_CFG_RND_CNT ; 
 scalar_t__ SIS_DEVICEID_7016 ; 
 scalar_t__ SIS_DEVICEID_900 ; 
 int /*<<< orphan*/  SIS_EECMD_DONE ; 
 int SIS_EECMD_GNT ; 
 int /*<<< orphan*/  SIS_EECMD_REQ ; 
 int /*<<< orphan*/  SIS_EECTL ; 
 int /*<<< orphan*/  SIS_EECTL_CLK ; 
 int /*<<< orphan*/  SIS_EE_NODEADDR ; 
 scalar_t__ SIS_REV_630E ; 
 scalar_t__ SIS_REV_630EA1 ; 
 scalar_t__ SIS_REV_630ET ; 
 scalar_t__ SIS_REV_630S ; 
 scalar_t__ SIS_REV_635 ; 
 scalar_t__ SIS_REV_900B ; 
 scalar_t__ SIS_REV_96x ; 
 int SIS_TIMEOUT ; 
 scalar_t__ SIS_TX_LIST_CNT ; 
 scalar_t__ SIS_TYPE_7016 ; 
 scalar_t__ SIS_TYPE_83815 ; 
 scalar_t__ SIS_TYPE_900 ; 
#define  SIS_VENDORID 128 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sis_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct sis_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 struct ifnet* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct sis_softc*) ; 
 int /*<<< orphan*/  sis_ifmedia_sts ; 
 int /*<<< orphan*/  sis_ifmedia_upd ; 
 int /*<<< orphan*/  sis_init ; 
 int /*<<< orphan*/  sis_intr ; 
 int /*<<< orphan*/  sis_ioctl ; 
 int /*<<< orphan*/  FUNC28 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sis_res_spec ; 
 int /*<<< orphan*/  FUNC31 (struct sis_softc*) ; 
 int FUNC32 (int) ; 
 int /*<<< orphan*/  sis_start ; 

__attribute__((used)) static int
FUNC33(device_t dev)
{
	u_char			eaddr[ETHER_ADDR_LEN];
	struct sis_softc	*sc;
	struct ifnet		*ifp;
	int			error = 0, pmc, waittime = 0;

	waittime = 0;
	sc = FUNC10(dev);

	sc->sis_dev = dev;

	FUNC18(&sc->sis_mtx, FUNC9(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC7(&sc->sis_stat_ch, &sc->sis_mtx, 0);

	if (FUNC21(dev) == SIS_DEVICEID_900)
		sc->sis_type = SIS_TYPE_900;
	if (FUNC21(dev) == SIS_DEVICEID_7016)
		sc->sis_type = SIS_TYPE_7016;
	if (FUNC22(dev) == NS_VENDORID)
		sc->sis_type = SIS_TYPE_83815;

	sc->sis_rev = FUNC23(dev, PCIR_REVID, 1);
	/*
	 * Map control/status registers.
	 */
	FUNC19(dev);

	error = FUNC5(dev, sis_res_spec, sc->sis_res);
	if (error) {
		FUNC12(dev, "couldn't allocate resources\n");
		goto fail;
	}

	/* Reset the adapter. */
	FUNC31(sc);

	if (sc->sis_type == SIS_TYPE_900 &&
	    (sc->sis_rev == SIS_REV_635 ||
	    sc->sis_rev == SIS_REV_900B)) {
		FUNC4(SIS_CFG_RND_CNT);
		FUNC4(SIS_CFG_PERR_DETECT);
	}

	/*
	 * Get station address from the EEPROM.
	 */
	switch (FUNC22(dev)) {
	case NS_VENDORID:
		sc->sis_srr = FUNC0(sc, NS_SRR);

		/* We can't update the device description, so spew */
		if (sc->sis_srr == NS_SRR_15C)
			FUNC12(dev, "Silicon Revision: DP83815C\n");
		else if (sc->sis_srr == NS_SRR_15D)
			FUNC12(dev, "Silicon Revision: DP83815D\n");
		else if (sc->sis_srr == NS_SRR_16A)
			FUNC12(dev, "Silicon Revision: DP83816A\n");
		else
			FUNC12(dev, "Silicon Revision %x\n", sc->sis_srr);

		/*
		 * Reading the MAC address out of the EEPROM on
		 * the NatSemi chip takes a bit more work than
		 * you'd expect. The address spans 4 16-bit words,
		 * with the first word containing only a single bit.
		 * You have to shift everything over one bit to
		 * get it aligned properly. Also, the bits are
		 * stored backwards (the LSB is really the MSB,
		 * and so on) so you have to reverse them in order
		 * to get the MAC address into the form we want.
		 * Why? Who the hell knows.
		 */
		{
			uint16_t		tmp[4];

			FUNC29(sc, (caddr_t)&tmp,
			    NS_EE_NODEADDR, 4, 0);

			/* Shift everything over one bit. */
			tmp[3] = tmp[3] >> 1;
			tmp[3] |= tmp[2] << 15;
			tmp[2] = tmp[2] >> 1;
			tmp[2] |= tmp[1] << 15;
			tmp[1] = tmp[1] >> 1;
			tmp[1] |= tmp[0] << 15;

			/* Now reverse all the bits. */
			tmp[3] = FUNC32(tmp[3]);
			tmp[2] = FUNC32(tmp[2]);
			tmp[1] = FUNC32(tmp[1]);

			eaddr[0] = (tmp[1] >> 0) & 0xFF;
			eaddr[1] = (tmp[1] >> 8) & 0xFF;
			eaddr[2] = (tmp[2] >> 0) & 0xFF;
			eaddr[3] = (tmp[2] >> 8) & 0xFF;
			eaddr[4] = (tmp[3] >> 0) & 0xFF;
			eaddr[5] = (tmp[3] >> 8) & 0xFF;
		}
		break;
	case SIS_VENDORID:
	default:
#if defined(__i386__) || defined(__amd64__)
		/*
		 * If this is a SiS 630E chipset with an embedded
		 * SiS 900 controller, we have to read the MAC address
		 * from the APC CMOS RAM. Our method for doing this
		 * is very ugly since we have to reach out and grab
		 * ahold of hardware for which we cannot properly
		 * allocate resources. This code is only compiled on
		 * the i386 architecture since the SiS 630E chipset
		 * is for x86 motherboards only. Note that there are
		 * a lot of magic numbers in this hack. These are
		 * taken from SiS's Linux driver. I'd like to replace
		 * them with proper symbolic definitions, but that
		 * requires some datasheets that I don't have access
		 * to at the moment.
		 */
		if (sc->sis_rev == SIS_REV_630S ||
		    sc->sis_rev == SIS_REV_630E ||
		    sc->sis_rev == SIS_REV_630EA1)
			FUNC28(sc, dev, (caddr_t)&eaddr, 0x9, 6);

		else if (sc->sis_rev == SIS_REV_635 ||
			 sc->sis_rev == SIS_REV_630ET)
			FUNC30(sc, dev, (caddr_t)&eaddr);
		else if (sc->sis_rev == SIS_REV_96x) {
			/* Allow to read EEPROM from LAN. It is shared
			 * between a 1394 controller and the NIC and each
			 * time we access it, we need to set SIS_EECMD_REQ.
			 */
			FUNC4(SIS_EECMD_REQ);
			for (waittime = 0; waittime < SIS_TIMEOUT;
			    waittime++) {
				/* Force EEPROM to idle state. */
				FUNC27(sc);
				if (FUNC0(sc, SIS_EECTL) & SIS_EECMD_GNT) {
					FUNC29(sc, (caddr_t)&eaddr,
					    SIS_EE_NODEADDR, 3, 0);
					break;
				}
				FUNC1(1);
			}
			/*
			 * Set SIS_EECTL_CLK to high, so a other master
			 * can operate on the i2c bus.
			 */
			FUNC4(SIS_EECTL_CLK);
			/* Refuse EEPROM access by LAN */
			FUNC4(SIS_EECMD_DONE);
		} else
#endif
			FUNC29(sc, (caddr_t)&eaddr,
			    SIS_EE_NODEADDR, 3, 0);
		break;
	}

	FUNC24(sc);

	/* Allocate DMA'able memory. */
	if ((error = FUNC26(sc)) != 0)
		goto fail;

	ifp = sc->sis_ifp = FUNC15(IFT_ETHER);
	if (ifp == NULL) {
		FUNC12(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC16(ifp, FUNC8(dev), FUNC11(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = sis_ioctl;
	ifp->if_start = sis_start;
	ifp->if_init = sis_init;
	FUNC2(&ifp->if_snd, SIS_TX_LIST_CNT - 1);
	ifp->if_snd.ifq_drv_maxlen = SIS_TX_LIST_CNT - 1;
	FUNC3(&ifp->if_snd);

	if (FUNC20(sc->sis_dev, PCIY_PMG, &pmc) == 0) {
		if (sc->sis_type == SIS_TYPE_83815)
			ifp->if_capabilities |= IFCAP_WOL;
		else
			ifp->if_capabilities |= IFCAP_WOL_MAGIC;
		ifp->if_capenable = ifp->if_capabilities;
	}

	/*
	 * Do MII setup.
	 */
	error = FUNC17(dev, &sc->sis_miibus, ifp, sis_ifmedia_upd,
	    sis_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC12(dev, "attaching PHYs failed\n");
		goto fail;
	}

	/*
	 * Call MI attach routine.
	 */
	FUNC13(ifp, eaddr);

	/*
	 * Tell the upper layer(s) we support long frames.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC6(dev, sc->sis_res[1], INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, sis_intr, sc, &sc->sis_intrhand);

	if (error) {
		FUNC12(dev, "couldn't set up irq\n");
		FUNC14(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC25(dev);

	return (error);
}