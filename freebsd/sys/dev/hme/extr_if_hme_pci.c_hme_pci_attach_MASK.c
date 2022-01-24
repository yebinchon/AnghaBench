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
struct resource {int dummy; } ;
struct hme_softc {int sc_burst; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_enaddr; int /*<<< orphan*/  sc_mifh; int /*<<< orphan*/  sc_mach; int /*<<< orphan*/  sc_erxh; int /*<<< orphan*/  sc_etxh; int /*<<< orphan*/  sc_sebh; int /*<<< orphan*/  sc_mift; int /*<<< orphan*/  sc_mact; int /*<<< orphan*/  sc_erxt; int /*<<< orphan*/  sc_etxt; int /*<<< orphan*/  sc_sebt; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * sc_dev; } ;
struct hme_pci_softc {struct resource* hsc_sres; struct resource* hsc_ires; int /*<<< orphan*/  hsc_ih; struct hme_softc hsc_hme; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  HME_PCI ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PCIC_BRIDGE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int PCI_PRODUCT_SUN_EBUS ; 
 scalar_t__ PCI_ROMHDR_PTR_DATA ; 
 scalar_t__ PCI_ROMHDR_SIG ; 
 int PCI_ROMHDR_SIG_MAGIC ; 
 int PCI_ROMHDR_SIZE ; 
 scalar_t__ PCI_ROM_DEVICE ; 
 scalar_t__ PCI_ROM_PTR_VPD ; 
 scalar_t__ PCI_ROM_SIG ; 
 scalar_t__ PCI_ROM_SIG_MAGIC ; 
 int PCI_ROM_SIZE ; 
 scalar_t__ PCI_ROM_VENDOR ; 
 int PCI_VENDOR_SUN ; 
 int PCI_VPDRES_BYTE0 ; 
 scalar_t__ FUNC5 (int) ; 
 int PCI_VPDRES_LARGE_DATA ; 
 int PCI_VPDRES_LARGE_LEN_LSB ; 
 int PCI_VPDRES_LARGE_LEN_MSB ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ PCI_VPDRES_TYPE_VPD ; 
 scalar_t__ PCI_VPD_DATA ; 
 int PCI_VPD_KEY0 ; 
 int PCI_VPD_KEY1 ; 
 int PCI_VPD_LEN ; 
 int PCI_VPD_SIZE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hme_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct hme_pci_softc* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct hme_softc*) ; 
 int /*<<< orphan*/  hme_intr ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (struct resource*) ; 
 int /*<<< orphan*/  FUNC30 (struct resource*) ; 
 int /*<<< orphan*/  FUNC31 (struct resource*) ; 

int
FUNC32(device_t dev)
{
	struct hme_pci_softc *hsc;
	struct hme_softc *sc;
	bus_space_tag_t	memt;
	bus_space_handle_t memh;
	int i, error = 0;
#if !(defined(__powerpc__) || defined(__sparc64__))
	device_t *children, ebus_dev;
	struct resource *ebus_rres;
	int j, slot;
#endif

	FUNC22(dev);
	/*
	 * Some Sun HMEs do have their intpin register bogusly set to 0,
	 * although it should be 1.  Correct that.
	 */
	if (FUNC25(dev) == 0)
		FUNC28(dev, 1);

	hsc = FUNC15(dev);
	sc = &hsc->hsc_hme;
	sc->sc_dev = dev;
	sc->sc_flags |= HME_PCI;
	FUNC21(&sc->sc_lock, FUNC13(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);

	/*
	 * Map five register banks:
	 *
	 *	bank 0: HME SEB registers:	+0x0000
	 *	bank 1: HME ETX registers:	+0x2000
	 *	bank 2: HME ERX registers:	+0x4000
	 *	bank 3: HME MAC registers:	+0x6000
	 *	bank 4: HME MIF registers:	+0x7000
	 *
	 */
	i = FUNC4(0);
	hsc->hsc_sres = FUNC7(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_sres == NULL) {
		FUNC16(dev, "could not map device registers\n");
		error = ENXIO;
		goto fail_mtx;
	}
	i = 0;
	hsc->hsc_ires = FUNC7(dev, SYS_RES_IRQ,
	    &i, RF_SHAREABLE | RF_ACTIVE);
	if (hsc->hsc_ires == NULL) {
		FUNC16(dev, "could not allocate interrupt\n");
		error = ENXIO;
		goto fail_sres;
	}
	memt = FUNC30(hsc->hsc_sres);
	memh = FUNC29(hsc->hsc_sres);
	sc->sc_sebt = sc->sc_etxt = sc->sc_erxt = sc->sc_mact = sc->sc_mift =
	    memt;
	FUNC11(memt, memh, 0x0000, 0x1000, &sc->sc_sebh);
	FUNC11(memt, memh, 0x2000, 0x1000, &sc->sc_etxh);
	FUNC11(memt, memh, 0x4000, 0x1000, &sc->sc_erxh);
	FUNC11(memt, memh, 0x6000, 0x1000, &sc->sc_mach);
	FUNC11(memt, memh, 0x7000, 0x1000, &sc->sc_mifh);

#if defined(__powerpc__) || defined(__sparc64__)
	OF_getetheraddr(dev, sc->sc_enaddr);
#else
	/*
	 * Dig out VPD (vital product data) and read NA (network address).
	 *
	 * The PCI HME is a PCIO chip, which is composed of two functions:
	 *	function 0: PCI-EBus2 bridge, and
	 *	function 1: HappyMeal Ethernet controller.
	 *
	 * The VPD of HME resides in the Boot PROM (PCI FCode) attached
	 * to the EBus bridge and can't be accessed via the PCI capability
	 * pointer.
	 * ``Writing FCode 3.x Programs'' (newer ones, dated 1997 and later)
	 * chapter 2 describes the data structure.
	 *
	 * We don't have a MI EBus driver since no EBus device exists
	 * (besides the FCode PROM) on add-on HME boards.  The ``no driver
	 * attached'' message for function 0 therefore is what is expected.
	 */

#define	PCI_ROMHDR_SIZE			0x1c
#define	PCI_ROMHDR_SIG			0x00
#define	PCI_ROMHDR_SIG_MAGIC		0xaa55		/* little endian */
#define	PCI_ROMHDR_PTR_DATA		0x18
#define	PCI_ROM_SIZE			0x18
#define	PCI_ROM_SIG			0x00
#define	PCI_ROM_SIG_MAGIC		0x52494350	/* "PCIR", endian */
							/* reversed */
#define	PCI_ROM_VENDOR			0x04
#define	PCI_ROM_DEVICE			0x06
#define	PCI_ROM_PTR_VPD			0x08
#define	PCI_VPDRES_BYTE0		0x00
#define	PCI_VPDRES_ISLARGE(x)		((x) & 0x80)
#define	PCI_VPDRES_LARGE_NAME(x)	((x) & 0x7f)
#define	PCI_VPDRES_TYPE_VPD		0x10		/* large */
#define	PCI_VPDRES_LARGE_LEN_LSB	0x01
#define	PCI_VPDRES_LARGE_LEN_MSB	0x02
#define	PCI_VPDRES_LARGE_DATA		0x03
#define	PCI_VPD_SIZE			0x03
#define	PCI_VPD_KEY0			0x00
#define	PCI_VPD_KEY1			0x01
#define	PCI_VPD_LEN			0x02
#define	PCI_VPD_DATA			0x03

#define	HME_ROM_READ_N(n, offs)	bus_space_read_ ## n (memt, memh, (offs))
#define	HME_ROM_READ_1(offs)	HME_ROM_READ_N(1, (offs))
#define	HME_ROM_READ_2(offs)	HME_ROM_READ_N(2, (offs))
#define	HME_ROM_READ_4(offs)	HME_ROM_READ_N(4, (offs))

	/* Search accompanying EBus bridge. */
	slot = FUNC26(dev);
	if (FUNC12(FUNC14(dev), &children, &i) != 0) {
		FUNC16(dev, "could not get children\n");
		error = ENXIO;
		goto fail_sres;
	}
	ebus_dev = NULL;
	for (j = 0; j < i; j++) {
		if (FUNC23(children[j]) == PCIC_BRIDGE &&
		    FUNC27(children[j]) == PCI_VENDOR_SUN &&
		    FUNC24(children[j]) == PCI_PRODUCT_SUN_EBUS &&
		    FUNC26(children[j]) == slot) {
			ebus_dev = children[j];
			break;
		}
	}
	if (ebus_dev == NULL) {
		FUNC16(dev, "could not find EBus bridge\n");
		error = ENXIO;
		goto fail_children;
	}

	/* Map EBus bridge PROM registers. */
	i = FUNC4(0);
	if ((ebus_rres = FUNC7(ebus_dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE)) == NULL) {
		FUNC16(dev, "could not map PROM registers\n");
		error = ENXIO;
		goto fail_children;
	}
	memt = FUNC30(ebus_rres);
	memh = FUNC29(ebus_rres);

	/* Read PCI Expansion ROM header. */
	if (HME_ROM_READ_2(PCI_ROMHDR_SIG) != PCI_ROMHDR_SIG_MAGIC ||
	    (i = HME_ROM_READ_2(PCI_ROMHDR_PTR_DATA)) < PCI_ROMHDR_SIZE) {
		FUNC16(dev, "unexpected PCI Expansion ROM header\n");
		error = ENXIO;
		goto fail_rres;
	}

	/* Read PCI Expansion ROM data. */
	if (HME_ROM_READ_4(i + PCI_ROM_SIG) != PCI_ROM_SIG_MAGIC ||
	    HME_ROM_READ_2(i + PCI_ROM_VENDOR) != FUNC27(dev) ||
	    HME_ROM_READ_2(i + PCI_ROM_DEVICE) != FUNC24(dev) ||
	    (j = HME_ROM_READ_2(i + PCI_ROM_PTR_VPD)) < i + PCI_ROM_SIZE) {
		FUNC16(dev, "unexpected PCI Expansion ROM data\n");
		error = ENXIO;
		goto fail_rres;
	}

	/*
	 * Read PCI VPD.
	 * SUNW,hme cards have a single large resource VPD-R tag
	 * containing one NA.  SUNW,qfe cards have four large resource
	 * VPD-R tags containing one NA each (all four HME chips share
	 * the same PROM).
	 * The VPD used on both cards is not in PCI 2.2 standard format
	 * however.  The length in the resource header is in big endian
	 * and the end tag is non-standard (0x79) and followed by an
	 * all-zero "checksum" byte.  Sun calls this a "Fresh Choice
	 * Ethernet" VPD...
	 */
	/* Look at the end tag to determine whether this is a VPD with 4 NAs. */
	if (HME_ROM_READ_1(j + PCI_VPDRES_LARGE_DATA + PCI_VPD_SIZE +
	    ETHER_ADDR_LEN) != 0x79 &&
	    HME_ROM_READ_1(j + 4 * (PCI_VPDRES_LARGE_DATA + PCI_VPD_SIZE +
	    ETHER_ADDR_LEN)) == 0x79)
		/* Use the Nth NA for the Nth HME on this SUNW,qfe. */
		j += slot * (PCI_VPDRES_LARGE_DATA + PCI_VPD_SIZE +
		    ETHER_ADDR_LEN);
	if (PCI_VPDRES_ISLARGE(HME_ROM_READ_1(j + PCI_VPDRES_BYTE0)) == 0 ||
	    PCI_VPDRES_LARGE_NAME(HME_ROM_READ_1(j + PCI_VPDRES_BYTE0)) !=
	    PCI_VPDRES_TYPE_VPD ||
	    (HME_ROM_READ_1(j + PCI_VPDRES_LARGE_LEN_LSB) << 8 |
	    HME_ROM_READ_1(j + PCI_VPDRES_LARGE_LEN_MSB)) !=
	    PCI_VPD_SIZE + ETHER_ADDR_LEN ||
	    HME_ROM_READ_1(j + PCI_VPDRES_LARGE_DATA + PCI_VPD_KEY0) !=
	    0x4e /* N */ ||
	    HME_ROM_READ_1(j + PCI_VPDRES_LARGE_DATA + PCI_VPD_KEY1) !=
	    0x41 /* A */ ||
	    HME_ROM_READ_1(j + PCI_VPDRES_LARGE_DATA + PCI_VPD_LEN) !=
	    ETHER_ADDR_LEN) {
		FUNC16(dev, "unexpected PCI VPD\n");
		error = ENXIO;
		goto fail_rres;
	}
	FUNC10(memt, memh, j + PCI_VPDRES_LARGE_DATA +
	    PCI_VPD_DATA, sc->sc_enaddr, ETHER_ADDR_LEN);

fail_rres:
	FUNC8(ebus_dev, SYS_RES_MEMORY,
	    FUNC31(ebus_rres), ebus_rres);
fail_children:
	FUNC17(children, M_TEMP);
	if (error != 0)
		goto fail_sres;
#endif

	sc->sc_burst = 64;	/* XXX */

	/*
	 * call the main configure
	 */
	if ((error = FUNC18(sc)) != 0) {
		FUNC16(dev, "could not be configured\n");
		goto fail_ires;
	}

	if ((error = FUNC9(dev, hsc->hsc_ires, INTR_TYPE_NET |
	    INTR_MPSAFE, NULL, hme_intr, sc, &hsc->hsc_ih)) != 0) {
		FUNC16(dev, "couldn't establish interrupt\n");
		FUNC19(sc);
		goto fail_ires;
	}
	return (0);

fail_ires:
	FUNC8(dev, SYS_RES_IRQ,
	    FUNC31(hsc->hsc_ires), hsc->hsc_ires);
fail_sres:
	FUNC8(dev, SYS_RES_MEMORY,
	    FUNC31(hsc->hsc_sres), hsc->hsc_sres);
fail_mtx:
	FUNC20(&sc->sc_lock);
	return (error);
}