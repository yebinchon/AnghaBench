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
typedef  int uint32_t ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; struct dme_softc* if_softc; } ;
struct dme_softc {int dme_bits; int dme_rev; int /*<<< orphan*/  dme_intrhand; int /*<<< orphan*/ * dme_irq; int /*<<< orphan*/  dme_macaddr; int /*<<< orphan*/  dme_miibus; struct ifnet* dme_ifp; int /*<<< orphan*/ * dme_res; int /*<<< orphan*/  dme_handle; int /*<<< orphan*/  dme_tag; TYPE_1__* gpio_rset; int /*<<< orphan*/  dme_vcc_regulator; int /*<<< orphan*/  dme_mtx; int /*<<< orphan*/  dme_tick_ch; int /*<<< orphan*/  dme_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DME_CHIPR ; 
 int DME_CHIP_DM9000 ; 
 int DME_CHIP_DM9000A ; 
 int DME_CHIP_DM9000B ; 
 int /*<<< orphan*/  DME_ISR ; 
 int /*<<< orphan*/  DME_PIDH ; 
 int /*<<< orphan*/  DME_PIDL ; 
 int /*<<< orphan*/  DME_VIDH ; 
 int /*<<< orphan*/  DME_VIDL ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFQ_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dme_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct dme_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dme_softc*) ; 
 int /*<<< orphan*/  dme_ifmedia_sts ; 
 int /*<<< orphan*/  dme_ifmedia_upd ; 
 int /*<<< orphan*/  dme_init ; 
 int /*<<< orphan*/  dme_intr ; 
 int /*<<< orphan*/  dme_ioctl ; 
 int FUNC16 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dme_softc*) ; 
 int /*<<< orphan*/  dme_start ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 struct ifnet* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct dme_softc *sc;
	struct ifnet *ifp;
	int error, rid;
	uint32_t data;

	sc = FUNC10(dev);
	sc->dme_dev = dev;

	error = 0;

	FUNC23(&sc->dme_mtx, FUNC9(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC7(&sc->dme_tick_ch, &sc->dme_mtx, 0);

	rid = 0;
	sc->dme_res = FUNC5(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->dme_res == NULL) {
		FUNC12(dev, "unable to map memory\n");
		error = ENXIO;
		goto fail;
	}

	rid = 0;
	sc->dme_irq = FUNC5(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->dme_irq == NULL) {
		FUNC12(dev, "unable to map memory\n");
		error = ENXIO;
		goto fail;
	}
	/*
	 * Power the chip up, if necessary
	 */
	error = FUNC26(dev, 0, "vcc-supply", &sc->dme_vcc_regulator);
	if (error == 0) {
		error = FUNC25(sc->dme_vcc_regulator);
		if (error != 0) {
			FUNC12(dev, "unable to enable power supply\n");
			error = ENXIO;
			goto fail;
		}
	}

	/*
	 * Delay a little.  This seems required on rev-1 boards (green.)
	 */
	FUNC0(100000);

	/* Bring controller out of reset */
	error = FUNC24(dev, "reset-gpios", &sc->gpio_rset);
	if (error > 1) {
		FUNC12(dev, "too many reset gpios\n");
		sc->gpio_rset = NULL;
		error = ENXIO;
		goto fail;
	}

	if (sc->gpio_rset != NULL) {
		error = FUNC1(sc->gpio_rset->dev, sc->gpio_rset->pin, 0);
		if (error != 0) {
			FUNC12(dev, "Cannot configure GPIO pin %d on %s\n",
			    sc->gpio_rset->pin, FUNC9(sc->gpio_rset->dev));
			goto fail;
		}

		error = FUNC2(sc->gpio_rset->dev, sc->gpio_rset->pin,
		    GPIO_PIN_OUTPUT);
		if (error != 0) {
			FUNC12(dev, "Cannot configure GPIO pin %d on %s\n",
			    sc->gpio_rset->pin, FUNC9(sc->gpio_rset->dev));
			goto fail;
		}

		FUNC0(2000);

		error = FUNC1(sc->gpio_rset->dev, sc->gpio_rset->pin, 1);
		if (error != 0) {
			FUNC12(dev, "Cannot configure GPIO pin %d on %s\n",
			    sc->gpio_rset->pin, FUNC9(sc->gpio_rset->dev));
			goto fail;
		}

		FUNC0(4000);
	} else
		FUNC12(dev, "Unable to find reset GPIO\n");

	sc->dme_tag = FUNC28(sc->dme_res);
	sc->dme_handle = FUNC27(sc->dme_res);

	/* Reset the chip as soon as possible */
	FUNC17(sc);

	/* Figure IO mode */
	switch((FUNC16(sc, DME_ISR) >> 6) & 0x03) {
	case 0:
		/* 16 bit */
		sc->dme_bits = 16;
		break;
	case 1:
		/* 32 bit */
		sc->dme_bits = 32;
		break;
	case 2:
		/* 8 bit */
		sc->dme_bits = 8;
		break;
	default:
		/* reserved */
		FUNC12(dev, "Unable to determine device mode\n");
		error = ENXIO;
		goto fail;
	}

	FUNC0(100000);

	/* Read vendor and device id's */
	data = FUNC16(sc, DME_VIDH) << 8;
	data |= FUNC16(sc, DME_VIDL);
	FUNC12(dev, "Vendor ID: 0x%04x\n", data);

	/* Read vendor and device id's */
	data = FUNC16(sc, DME_PIDH) << 8;
	data |= FUNC16(sc, DME_PIDL);
	FUNC12(dev, "Product ID: 0x%04x\n", data);

	/* Chip revision */
	data = FUNC16(sc, DME_CHIPR);
	FUNC12(dev, "Revision: 0x%04x\n", data);
	if (data != DME_CHIP_DM9000A && data != DME_CHIP_DM9000B)
		data = DME_CHIP_DM9000;
	sc->dme_rev = data;

	FUNC12(dev, "using %d-bit IO mode\n", sc->dme_bits);
	FUNC4(sc->dme_bits == 8, ("wrong io mode"));

	/* Try to figure our mac address */
	FUNC15(sc);

	/* Configure chip after reset */
	FUNC13(sc);

	ifp = sc->dme_ifp = FUNC20(IFT_ETHER);
	if (ifp == NULL) {
		FUNC12(dev, "unable to allocate ifp\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;

	/* Setup MII */
	error = FUNC22(dev, &sc->dme_miibus, ifp, dme_ifmedia_upd,
	    dme_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	/* This should never happen as the DM9000 contains it's own PHY */
	if (error != 0) {
		FUNC12(dev, "PHY probe failed\n");
		goto fail;
	}

	FUNC21(ifp, FUNC8(dev), FUNC11(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_start = dme_start;
	ifp->if_ioctl = dme_ioctl;
	ifp->if_init = dme_init;
	FUNC3(&ifp->if_snd, IFQ_MAXLEN);

	FUNC18(ifp, sc->dme_macaddr);

	error = FUNC6(dev, sc->dme_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, dme_intr, sc, &sc->dme_intrhand);
	if (error) {
		FUNC12(dev, "couldn't set up irq\n");
		FUNC19(ifp);
		goto fail;
	}

fail:
	if (error != 0)
		FUNC14(dev);
	return (error);
}