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
typedef  int /*<<< orphan*/  u_char ;
struct cgem_softc {int rxhangwar; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  tick_ch; int /*<<< orphan*/  miibus; int /*<<< orphan*/  rxbufs; int /*<<< orphan*/  if_old_flags; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * mem_res; scalar_t__ ref_clk_num; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NUM_TX_DESCS ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*) ; 
 int /*<<< orphan*/  DEFAULT_NUM_RX_BUFS ; 
 int ENOMEM ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  IF_CGEM_NAME ; 
 int INTR_EXCL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cgem_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cgem_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cgem_ifmedia_sts ; 
 int /*<<< orphan*/  cgem_ifmedia_upd ; 
 int /*<<< orphan*/  cgem_init ; 
 int /*<<< orphan*/  cgem_intr ; 
 int /*<<< orphan*/  cgem_ioctl ; 
 int /*<<< orphan*/  FUNC10 (struct cgem_softc*) ; 
 int FUNC11 (struct cgem_softc*) ; 
 int /*<<< orphan*/  cgem_start ; 
 struct cgem_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC34(device_t dev)
{
	struct cgem_softc *sc = FUNC12(dev);
	if_t ifp = NULL;
	phandle_t node;
	pcell_t cell;
	int rid, err;
	u_char eaddr[ETHER_ADDR_LEN];

	sc->dev = dev;
	FUNC1(sc);

	/* Get reference clock number and base divider from fdt. */
	node = FUNC33(dev);
	sc->ref_clk_num = 0;
	if (FUNC3(node, "ref-clock-num", &cell, sizeof(cell)) > 0)
		sc->ref_clk_num = FUNC17(cell);

	/* Get memory resource. */
	rid = 0;
	sc->mem_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
					     RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC14(dev, "could not allocate memory resources.\n");
		return (ENOMEM);
	}

	/* Get IRQ resource. */
	rid = 0;
	sc->irq_res = FUNC4(dev, SYS_RES_IRQ, &rid,
					     RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC14(dev, "could not allocate interrupt resource.\n");
		FUNC8(dev);
		return (ENOMEM);
	}

	/* Set up ifnet structure. */
	ifp = sc->ifp = FUNC18(IFT_ETHER);
	if (ifp == NULL) {
		FUNC14(dev, "could not allocate ifnet structure\n");
		FUNC8(dev);
		return (ENOMEM);
	}
	FUNC30(ifp, sc);
	FUNC21(ifp, IF_CGEM_NAME, FUNC13(dev));
	FUNC24(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
	FUNC26(ifp, cgem_init);
	FUNC27(ifp, cgem_ioctl);
	FUNC31(ifp, cgem_start);
	FUNC22(ifp, IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
			      IFCAP_VLAN_MTU | IFCAP_VLAN_HWCSUM, 0);
	FUNC28(ifp, CGEM_NUM_TX_DESCS);
	FUNC29(ifp);

	/* Disable hardware checksumming by default. */
	FUNC25(ifp, 0);
	FUNC23(ifp, FUNC19(ifp) &
		~(IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 | IFCAP_VLAN_HWCSUM));

	sc->if_old_flags = FUNC20(ifp);
	sc->rxbufs = DEFAULT_NUM_RX_BUFS;
	sc->rxhangwar = 1;

	/* Reset hardware. */
	FUNC0(sc);
	FUNC10(sc);
	FUNC2(sc);

	/* Attach phy to mii bus. */
	err = FUNC32(dev, &sc->miibus, ifp,
			 cgem_ifmedia_upd, cgem_ifmedia_sts,
			 BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (err) {
		FUNC14(dev, "attaching PHYs failed\n");
		FUNC8(dev);
		return (err);
	}

	/* Set up TX and RX descriptor area. */
	err = FUNC11(sc);
	if (err) {
		FUNC14(dev, "could not set up dma mem for descs.\n");
		FUNC8(dev);
		return (ENOMEM);
	}

	/* Get a MAC address. */
	FUNC9(sc, eaddr);

	/* Start ticks. */
	FUNC6(&sc->tick_ch, &sc->sc_mtx, 0);

	FUNC15(ifp, eaddr);

	err = FUNC5(dev, sc->irq_res, INTR_TYPE_NET | INTR_MPSAFE |
			     INTR_EXCL, NULL, cgem_intr, sc, &sc->intrhand);
	if (err) {
		FUNC14(dev, "could not set interrupt handler.\n");
		FUNC16(ifp);
		FUNC8(dev);
		return (err);
	}

	FUNC7(dev);

	return (0);
}