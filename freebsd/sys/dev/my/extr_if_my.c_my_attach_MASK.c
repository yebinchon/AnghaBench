#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct my_type {int my_vid; int /*<<< orphan*/  my_name; } ;
struct TYPE_7__ {int ifm_media; } ;
struct my_softc {int my_phy_addr; int /*<<< orphan*/  my_mtx; int /*<<< orphan*/ * my_res; int /*<<< orphan*/ * my_irq; int /*<<< orphan*/ * my_ldata_ptr; int /*<<< orphan*/  my_intrhand; TYPE_2__ ifmedia; struct my_type* my_pinfo; TYPE_1__* my_info; struct ifnet* my_ifp; struct my_list_data* my_ldata; int /*<<< orphan*/  my_bhandle; int /*<<< orphan*/  my_btag; int /*<<< orphan*/  my_watchdog; int /*<<< orphan*/  my_autoneg_timer; int /*<<< orphan*/  my_dev; } ;
struct my_list_data {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_baudrate; TYPE_4__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct my_softc* if_softc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_6__ {scalar_t__ my_did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct my_softc*,scalar_t__) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_100_TX ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 scalar_t__ MTD800ID ; 
 scalar_t__ MTD803ID ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  MY_FLAG_FORCEDELAY ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*) ; 
 scalar_t__ MY_PAR0 ; 
 int /*<<< orphan*/  MY_PCI_LOIO ; 
 int MY_PHYADDR_MAX ; 
 int MY_PHYADDR_MIN ; 
 int /*<<< orphan*/  MY_RES ; 
 int MY_RID ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*) ; 
 scalar_t__ MY_USEIOSPACE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PHY_BMSR ; 
 int /*<<< orphan*/  PHY_DEVID ; 
 size_t PHY_UNKNOWN ; 
 int /*<<< orphan*/  PHY_VENID ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct my_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct my_list_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct my_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/ * FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (struct my_softc*) ; 
 int /*<<< orphan*/  my_ifmedia_sts ; 
 int /*<<< orphan*/  my_ifmedia_upd ; 
 TYPE_1__* my_info_tmp ; 
 int /*<<< orphan*/  my_init ; 
 int /*<<< orphan*/  my_intr ; 
 int /*<<< orphan*/  my_ioctl ; 
 int FUNC28 (struct my_softc*,int /*<<< orphan*/ ) ; 
 struct my_type* my_phys ; 
 int /*<<< orphan*/  FUNC29 (struct my_softc*) ; 
 int /*<<< orphan*/  my_start ; 
 int /*<<< orphan*/  FUNC30 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	int             i;
	u_char          eaddr[ETHER_ADDR_LEN];
	u_int32_t       iobase;
	struct my_softc *sc;
	struct ifnet   *ifp;
	int             media = IFM_ETHER | IFM_100_TX | IFM_FDX;
	unsigned int    round;
	caddr_t         roundptr;
	struct my_type *p;
	u_int16_t       phy_vid, phy_did, phy_sts = 0;
	int             rid, error = 0;

	sc = FUNC12(dev);
	sc->my_dev = dev;
	FUNC25(&sc->my_mtx, FUNC11(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC9(&sc->my_autoneg_timer, &sc->my_mtx, 0);
	FUNC9(&sc->my_watchdog, &sc->my_mtx, 0);

	/*
	 * Map control/status registers.
	 */
	FUNC31(dev);

	if (my_info_tmp->my_did == MTD800ID) {
		iobase = FUNC32(dev, MY_PCI_LOIO, 4);
		if (iobase & 0x300)
			MY_USEIOSPACE = 0;
	}

	rid = MY_RID;
	sc->my_res = FUNC5(dev, MY_RES, &rid, RF_ACTIVE);

	if (sc->my_res == NULL) {
		FUNC14(dev, "couldn't map ports/memory\n");
		error = ENXIO;
		goto destroy_mutex;
	}
	sc->my_btag = FUNC35(sc->my_res);
	sc->my_bhandle = FUNC34(sc->my_res);

	rid = 0;
	sc->my_irq = FUNC5(dev, SYS_RES_IRQ, &rid,
					    RF_SHAREABLE | RF_ACTIVE);

	if (sc->my_irq == NULL) {
		FUNC14(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto release_io;
	}

	sc->my_info = my_info_tmp;

	/* Reset the adapter. */
	FUNC3(sc);
	FUNC29(sc);
	FUNC4(sc);

	/*
	 * Get station address
	 */
	for (i = 0; i < ETHER_ADDR_LEN; ++i)
		eaddr[i] = FUNC0(sc, MY_PAR0 + i);

	sc->my_ldata_ptr = FUNC23(sizeof(struct my_list_data) + 8,
				  M_DEVBUF, M_NOWAIT);
	if (sc->my_ldata_ptr == NULL) {
		FUNC14(dev, "no memory for list buffers!\n");
		error = ENXIO;
		goto release_irq;
	}
	sc->my_ldata = (struct my_list_data *) sc->my_ldata_ptr;
	round = (uintptr_t)sc->my_ldata_ptr & 0xF;
	roundptr = sc->my_ldata_ptr;
	for (i = 0; i < 8; i++) {
		if (round % 8) {
			round++;
			roundptr++;
		} else
			break;
	}
	sc->my_ldata = (struct my_list_data *) roundptr;
	FUNC8(sc->my_ldata, sizeof(struct my_list_data));

	ifp = sc->my_ifp = FUNC18(IFT_ETHER);
	if (ifp == NULL) {
		FUNC14(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto free_ldata;
	}
	ifp->if_softc = sc;
	FUNC20(ifp, FUNC10(dev), FUNC13(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = my_ioctl;
	ifp->if_start = my_start;
	ifp->if_init = my_init;
	ifp->if_baudrate = 10000000;
	FUNC1(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
	FUNC2(&ifp->if_snd);

	if (sc->my_info->my_did == MTD803ID)
		sc->my_pinfo = my_phys;
	else {
		if (bootverbose)
			FUNC14(dev, "probing for a PHY\n");
		FUNC3(sc);
		for (i = MY_PHYADDR_MIN; i < MY_PHYADDR_MAX + 1; i++) {
			if (bootverbose)
				FUNC14(dev, "checking address: %d\n", i);
			sc->my_phy_addr = i;
			phy_sts = FUNC28(sc, PHY_BMSR);
			if ((phy_sts != 0) && (phy_sts != 0xffff))
				break;
			else
				phy_sts = 0;
		}
		if (phy_sts) {
			phy_vid = FUNC28(sc, PHY_VENID);
			phy_did = FUNC28(sc, PHY_DEVID);
			if (bootverbose) {
				FUNC14(dev, "found PHY at address %d, ",
				    sc->my_phy_addr);
				FUNC33("vendor id: %x device id: %x\n",
				    phy_vid, phy_did);
			}
			p = my_phys;
			while (p->my_vid) {
				if (phy_vid == p->my_vid) {
					sc->my_pinfo = p;
					break;
				}
				p++;
			}
			if (sc->my_pinfo == NULL)
				sc->my_pinfo = &my_phys[PHY_UNKNOWN];
			if (bootverbose)
				FUNC14(dev, "PHY type: %s\n",
				       sc->my_pinfo->my_name);
		} else {
			FUNC4(sc);
			FUNC14(dev, "MII without any phy!\n");
			error = ENXIO;
			goto free_if;
		}
		FUNC4(sc);
	}

	/* Do ifmedia setup. */
	FUNC21(&sc->ifmedia, 0, my_ifmedia_upd, my_ifmedia_sts);
	FUNC3(sc);
	FUNC27(sc);
	FUNC26(sc, MY_FLAG_FORCEDELAY, 1);
	media = sc->ifmedia.ifm_media;
	FUNC30(sc);
	FUNC4(sc);
	FUNC22(&sc->ifmedia, media);

	FUNC15(ifp, eaddr);

	error = FUNC7(dev, sc->my_irq, INTR_TYPE_NET | INTR_MPSAFE,
			       NULL, my_intr, sc, &sc->my_intrhand);

	if (error) {
		FUNC14(dev, "couldn't set up irq\n");
		goto detach_if;
	}
	 
	return (0);

detach_if:
	FUNC16(ifp);
free_if:
	FUNC19(ifp);
free_ldata:
	FUNC17(sc->my_ldata_ptr, M_DEVBUF);
release_irq:
	FUNC6(dev, SYS_RES_IRQ, 0, sc->my_irq);
release_io:
	FUNC6(dev, MY_RES, MY_RID, sc->my_res);
destroy_mutex:
	FUNC24(&sc->my_mtx);
	return (error);
}