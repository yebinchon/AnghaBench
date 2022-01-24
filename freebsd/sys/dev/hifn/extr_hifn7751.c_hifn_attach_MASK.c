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
typedef  int u_int16_t ;
struct hifn_softc {int sc_flags; int sc_pllconfig; scalar_t__ sc_st0; scalar_t__ sc_sh0; scalar_t__ sc_st1; scalar_t__ sc_sh1; int sc_drammodel; int sc_ramsize; scalar_t__ sc_cid; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_bar0res; int /*<<< orphan*/ * sc_bar1res; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_dmamap; struct hifn_dma* sc_dma; int /*<<< orphan*/ * sc_irq; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_tickto; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_dma_physaddr; void* sc_bar1_lastreg; void* sc_bar0_lastreg; } ;
struct hifn_session {int dummy; } ;
struct hifn_dma {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  struct hifn_dma* caddr_t ;
typedef  void* bus_size_t ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_ARC4 ; 
 int /*<<< orphan*/  CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5 ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1 ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int ENXIO ; 
 int /*<<< orphan*/  HIFN_0_PUCNFG ; 
 int /*<<< orphan*/  HIFN_0_PUSTAT ; 
 int /*<<< orphan*/  HIFN_1_DMA_CNFG ; 
 int /*<<< orphan*/  HIFN_1_REVID ; 
 int HIFN_BAR0 ; 
 int HIFN_BAR1 ; 
 int HIFN_DMACNFG_DMARESET ; 
 int HIFN_DMACNFG_MODE ; 
 int HIFN_DMACNFG_MSTRESET ; 
 int HIFN_HAS_AES ; 
 int HIFN_HAS_PUBLIC ; 
 int HIFN_HAS_RNG ; 
 int HIFN_IS_7811 ; 
 int HIFN_IS_7956 ; 
 int /*<<< orphan*/  HIFN_MAX_DMALEN ; 
 int /*<<< orphan*/  HIFN_MAX_SEGLEN ; 
 int HIFN_PLL_ND ; 
 int HIFN_PLL_REF_SEL ; 
 int HIFN_PUCNFG_CHIPID ; 
 int HIFN_PUSTAT_CHIPENA ; 
#define  HIFN_PUSTAT_ENA_1 129 
#define  HIFN_PUSTAT_ENA_2 128 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MAX_SCATTER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ PCI_PRODUCT_HIFN_7811 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7951 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7955 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7956 ; 
 scalar_t__ PCI_PRODUCT_NETSEC_7751 ; 
 scalar_t__ PCI_VENDOR_HIFN ; 
 scalar_t__ PCI_VENDOR_NETSEC ; 
 int FUNC1 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hifn_dma*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct hifn_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hifn_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct hifn_dma*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hifn_softc*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 struct hifn_softc* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hifn_dmamap_cb ; 
 int /*<<< orphan*/  FUNC27 (struct hifn_softc*) ; 
 scalar_t__ FUNC28 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC30 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC31 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC32 (struct hifn_softc*) ; 
 int /*<<< orphan*/  hifn_intr ; 
 int /*<<< orphan*/  FUNC33 (struct hifn_softc*) ; 
 scalar_t__ FUNC34 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC35 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC37 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC38 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC39 (struct hifn_softc*) ; 
 int /*<<< orphan*/  hifn_tick ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (char*,...) ; 
 void* FUNC47 (int /*<<< orphan*/ *) ; 
 void* FUNC48 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC49(device_t dev)
{
	struct hifn_softc *sc = FUNC25(dev);
	caddr_t kva;
	int rseg, rid;
	char rbase;
	u_int16_t ena, rev;

	sc->sc_dev = dev;

	FUNC41(&sc->sc_mtx, FUNC24(dev), "hifn driver", MTX_DEF);

	/* XXX handle power management */

	/*
	 * The 7951 and 795x have a random number generator and
	 * public key support; note this.
	 */
	if (FUNC45(dev) == PCI_VENDOR_HIFN &&
	    (FUNC43(dev) == PCI_PRODUCT_HIFN_7951 ||
	     FUNC43(dev) == PCI_PRODUCT_HIFN_7955 ||
	     FUNC43(dev) == PCI_PRODUCT_HIFN_7956))
		sc->sc_flags = HIFN_HAS_RNG | HIFN_HAS_PUBLIC;
	/*
	 * The 7811 has a random number generator and
	 * we also note it's identity 'cuz of some quirks.
	 */
	if (FUNC45(dev) == PCI_VENDOR_HIFN &&
	    FUNC43(dev) == PCI_PRODUCT_HIFN_7811)
		sc->sc_flags |= HIFN_IS_7811 | HIFN_HAS_RNG;

	/*
	 * The 795x parts support AES.
	 */
	if (FUNC45(dev) == PCI_VENDOR_HIFN &&
	    (FUNC43(dev) == PCI_PRODUCT_HIFN_7955 ||
	     FUNC43(dev) == PCI_PRODUCT_HIFN_7956)) {
		sc->sc_flags |= HIFN_IS_7956 | HIFN_HAS_AES;
		/*
		 * Select PLL configuration.  This depends on the
		 * bus and board design and must be manually configured
		 * if the default setting is unacceptable.
		 */
		FUNC29(dev, &sc->sc_pllconfig);
	}

	/*
	 * Setup PCI resources. Note that we record the bus
	 * tag and handle for each register mapping, this is
	 * used by the READ_REG_0, WRITE_REG_0, READ_REG_1,
	 * and WRITE_REG_1 macros throughout the driver.
	 */
	FUNC42(dev);

	rid = HIFN_BAR0;
	sc->sc_bar0res = FUNC5(dev, SYS_RES_MEMORY, &rid,
			 			RF_ACTIVE);
	if (sc->sc_bar0res == NULL) {
		FUNC26(dev, "cannot map bar%d register space\n", 0);
		goto fail_pci;
	}
	sc->sc_st0 = FUNC48(sc->sc_bar0res);
	sc->sc_sh0 = FUNC47(sc->sc_bar0res);
	sc->sc_bar0_lastreg = (bus_size_t) -1;

	rid = HIFN_BAR1;
	sc->sc_bar1res = FUNC5(dev, SYS_RES_MEMORY, &rid,
						RF_ACTIVE);
	if (sc->sc_bar1res == NULL) {
		FUNC26(dev, "cannot map bar%d register space\n", 1);
		goto fail_io0;
	}
	sc->sc_st1 = FUNC48(sc->sc_bar1res);
	sc->sc_sh1 = FUNC47(sc->sc_bar1res);
	sc->sc_bar1_lastreg = (bus_size_t) -1;

	FUNC38(sc);

	/*
	 * Setup the area where the Hifn DMA's descriptors
	 * and associated data structures.
	 */
	if (FUNC6(FUNC15(dev),	/* PCI parent */
			       1, 0,			/* alignment,boundary */
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR,	/* highaddr */
			       NULL, NULL,		/* filter, filterarg */
			       HIFN_MAX_DMALEN,		/* maxsize */
			       MAX_SCATTER,		/* nsegments */
			       HIFN_MAX_SEGLEN,		/* maxsegsize */
			       BUS_DMA_ALLOCNOW,	/* flags */
			       NULL,			/* lockfunc */
			       NULL,			/* lockarg */
			       &sc->sc_dmat)) {
		FUNC26(dev, "cannot allocate DMA tag\n");
		goto fail_io1;
	}
	if (FUNC8(sc->sc_dmat, BUS_DMA_NOWAIT, &sc->sc_dmamap)) {
		FUNC26(dev, "cannot create dma map\n");
		FUNC7(sc->sc_dmat);
		goto fail_io1;
	}
	if (FUNC13(sc->sc_dmat, (void**) &kva, BUS_DMA_NOWAIT, &sc->sc_dmamap)) {
		FUNC26(dev, "cannot alloc dma buffer\n");
		FUNC9(sc->sc_dmat, sc->sc_dmamap);
		FUNC7(sc->sc_dmat);
		goto fail_io1;
	}
	if (FUNC10(sc->sc_dmat, sc->sc_dmamap, kva,
			     sizeof (*sc->sc_dma),
			     hifn_dmamap_cb, &sc->sc_dma_physaddr,
			     BUS_DMA_NOWAIT)) {
		FUNC26(dev, "cannot load dma map\n");
		FUNC14(sc->sc_dmat, kva, sc->sc_dmamap);
		FUNC7(sc->sc_dmat);
		goto fail_io1;
	}
	sc->sc_dma = (struct hifn_dma *)kva;
	FUNC19(sc->sc_dma, sizeof(*sc->sc_dma));

	FUNC0(sc->sc_st0 != 0, ("hifn_attach: null bar0 tag!"));
	FUNC0(sc->sc_sh0 != 0, ("hifn_attach: null bar0 handle!"));
	FUNC0(sc->sc_st1 != 0, ("hifn_attach: null bar1 tag!"));
	FUNC0(sc->sc_sh1 != 0, ("hifn_attach: null bar1 handle!"));

	/*
	 * Reset the board and do the ``secret handshake''
	 * to enable the crypto support.  Then complete the
	 * initialization procedure by setting up the interrupt
	 * and hooking in to the system crypto support so we'll
	 * get used for system services like the crypto device,
	 * IPsec, RNG device, etc.
	 */
	FUNC35(sc, 0);

	if (FUNC28(sc) != 0) {
		FUNC26(dev, "crypto enabling failed\n");
		goto fail_mem;
	}
	FUNC36(sc);

	FUNC30(sc);
	FUNC31(sc);

	/* XXX can't dynamically determine ram type for 795x; force dram */
	if (sc->sc_flags & HIFN_IS_7956)
		sc->sc_drammodel = 1;
	else if (FUNC34(sc))
		goto fail_mem;

	if (sc->sc_drammodel == 0)
		FUNC39(sc);
	else
		FUNC27(sc);

	/*
	 * Workaround for NetSec 7751 rev A: half ram size because two
	 * of the address lines were left floating
	 */
	if (FUNC45(dev) == PCI_VENDOR_NETSEC &&
	    FUNC43(dev) == PCI_PRODUCT_NETSEC_7751 &&
	    FUNC44(dev) == 0x61)	/*XXX???*/
		sc->sc_ramsize >>= 1;

	/*
	 * Arrange the interrupt line.
	 */
	rid = 0;
	sc->sc_irq = FUNC5(dev, SYS_RES_IRQ, &rid,
					    RF_SHAREABLE|RF_ACTIVE);
	if (sc->sc_irq == NULL) {
		FUNC26(dev, "could not map interrupt\n");
		goto fail_mem;
	}
	/*
	 * NB: Network code assumes we are blocked with splimp()
	 *     so make sure the IRQ is marked appropriately.
	 */
	if (FUNC17(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
			   NULL, hifn_intr, sc, &sc->sc_intrhand)) {
		FUNC26(dev, "could not setup interrupt\n");
		goto fail_intr2;
	}

	FUNC37(sc);

	/*
	 * NB: Keep only the low 16 bits; this masks the chip id
	 *     from the 7951.
	 */
	rev = FUNC2(sc, HIFN_1_REVID) & 0xffff;

	rseg = sc->sc_ramsize / 1024;
	rbase = 'K';
	if (sc->sc_ramsize >= (1024 * 1024)) {
		rbase = 'M';
		rseg /= 1024;
	}
	FUNC26(sc->sc_dev, "%s, rev %u, %d%cB %cram",
		FUNC33(sc), rev,
		rseg, rbase, sc->sc_drammodel ? 'd' : 's');
	if (sc->sc_flags & HIFN_IS_7956)
		FUNC46(", pll=0x%x<%s clk, %ux mult>",
			sc->sc_pllconfig,
			sc->sc_pllconfig & HIFN_PLL_REF_SEL ? "ext" : "pci",
			2 + 2*((sc->sc_pllconfig & HIFN_PLL_ND) >> 11));
	FUNC46("\n");

	sc->sc_cid = FUNC22(dev, sizeof(struct hifn_session),
	    CRYPTOCAP_F_HARDWARE);
	if (sc->sc_cid < 0) {
		FUNC26(dev, "could not get crypto driver id\n");
		goto fail_intr;
	}

	FUNC3(sc, HIFN_0_PUCNFG,
	    FUNC1(sc, HIFN_0_PUCNFG) | HIFN_PUCNFG_CHIPID);
	ena = FUNC1(sc, HIFN_0_PUSTAT) & HIFN_PUSTAT_CHIPENA;

	switch (ena) {
	case HIFN_PUSTAT_ENA_2:
		FUNC23(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
		FUNC23(sc->sc_cid, CRYPTO_ARC4, 0, 0);
		if (sc->sc_flags & HIFN_HAS_AES)
			FUNC23(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);
		/*FALLTHROUGH*/
	case HIFN_PUSTAT_ENA_1:
		FUNC23(sc->sc_cid, CRYPTO_MD5, 0, 0);
		FUNC23(sc->sc_cid, CRYPTO_SHA1, 0, 0);
		FUNC23(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
		FUNC23(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
		FUNC23(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
		break;
	}

	FUNC11(sc->sc_dmat, sc->sc_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	if (sc->sc_flags & (HIFN_HAS_PUBLIC | HIFN_HAS_RNG))
		FUNC32(sc);

	FUNC20(&sc->sc_tickto, 1);
	FUNC21(&sc->sc_tickto, hz, hifn_tick, sc);

	return (0);

fail_intr:
	FUNC18(dev, sc->sc_irq, sc->sc_intrhand);
fail_intr2:
	/* XXX don't store rid */
	FUNC16(dev, SYS_RES_IRQ, 0, sc->sc_irq);
fail_mem:
	FUNC12(sc->sc_dmat, sc->sc_dmamap);
	FUNC14(sc->sc_dmat, sc->sc_dma, sc->sc_dmamap);
	FUNC7(sc->sc_dmat);

	/* Turn off DMA polling */
	FUNC4(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
	    HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
fail_io1:
	FUNC16(dev, SYS_RES_MEMORY, HIFN_BAR1, sc->sc_bar1res);
fail_io0:
	FUNC16(dev, SYS_RES_MEMORY, HIFN_BAR0, sc->sc_bar0res);
fail_pci:
	FUNC40(&sc->sc_mtx);
	return (ENXIO);
}