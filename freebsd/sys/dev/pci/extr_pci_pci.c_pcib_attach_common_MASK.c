#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint8_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ limit; scalar_t__ base; } ;
struct TYPE_3__ {int sec; int sub; } ;
struct pcib_softc {int domain; int bridgectl; int pribus; int flags; scalar_t__ pmemlimit; scalar_t__ pmembase; scalar_t__ memlimit; scalar_t__ membase; int /*<<< orphan*/  iolimit; int /*<<< orphan*/  iobase; TYPE_2__ pmem; TYPE_2__ mem; TYPE_2__ io; TYPE_1__ bus; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int PCIB_BCR_ISA_ENABLE ; 
 int PCIB_BCR_VGA_ENABLE ; 
 int PCIB_DISABLE_MSI ; 
 int PCIB_DISABLE_MSIX ; 
 int PCIB_HOTPLUG ; 
 int PCIB_SUBTRACTIVE ; 
 scalar_t__ PCIP_BRIDGE_PCI_SUBTRACTIVE ; 
 int PCIR_BRIDGECTL_1 ; 
 int PCIR_PRIBUS_1 ; 
 int PCIR_PROGIF ; 
 int PCIR_SECBUS_1 ; 
 int PCIR_SUBBUS_1 ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 scalar_t__ bootverbose ; 
 struct pcib_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pcib_softc*) ; 
 scalar_t__ FUNC17 (struct pcib_softc*) ; 
 scalar_t__ FUNC18 (struct pcib_softc*) ; 
 scalar_t__ FUNC19 (struct pcib_softc*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int) ; 

void
FUNC27(device_t dev)
{
    struct pcib_softc	*sc;
    struct sysctl_ctx_list *sctx;
    struct sysctl_oid	*soid;
    int comma;

    sc = FUNC2(dev);
    sc->dev = dev;

    /*
     * Get current bridge configuration.
     */
    sc->domain = FUNC11(dev);
#if !(defined(NEW_PCIB) && defined(PCI_RES_BUS))
    sc->bus.sec = FUNC14(dev, PCIR_SECBUS_1, 1);
    sc->bus.sub = FUNC14(dev, PCIR_SUBBUS_1, 1);
#endif
    sc->bridgectl = FUNC14(dev, PCIR_BRIDGECTL_1, 2);
    FUNC16(sc);

    /*
     * The primary bus register should always be the bus of the
     * parent.
     */
    sc->pribus = FUNC9(dev);
    FUNC15(dev, PCIR_PRIBUS_1, sc->pribus, 1);

    /*
     * Setup sysctl reporting nodes
     */
    sctx = FUNC3(dev);
    soid = FUNC4(dev);
    FUNC0(sctx, FUNC1(soid), OID_AUTO, "domain",
      CTLFLAG_RD, &sc->domain, 0, "Domain number");
    FUNC0(sctx, FUNC1(soid), OID_AUTO, "pribus",
      CTLFLAG_RD, &sc->pribus, 0, "Primary bus number");
    FUNC0(sctx, FUNC1(soid), OID_AUTO, "secbus",
      CTLFLAG_RD, &sc->bus.sec, 0, "Secondary bus number");
    FUNC0(sctx, FUNC1(soid), OID_AUTO, "subbus",
      CTLFLAG_RD, &sc->bus.sub, 0, "Subordinate bus number");

    /*
     * Quirk handling.
     */
    switch (FUNC10(dev)) {
#if !(defined(NEW_PCIB) && defined(PCI_RES_BUS))
    case 0x12258086:		/* Intel 82454KX/GX (Orion) */
	{
	    uint8_t	supbus;

	    supbus = FUNC14(dev, 0x41, 1);
	    if (supbus != 0xff) {
		sc->bus.sec = supbus + 1;
		sc->bus.sub = supbus + 1;
	    }
	    break;
	}
#endif

    /*
     * The i82380FB mobile docking controller is a PCI-PCI bridge,
     * and it is a subtractive bridge.  However, the ProgIf is wrong
     * so the normal setting of PCIB_SUBTRACTIVE bit doesn't
     * happen.  There are also Toshiba and Cavium ThunderX bridges
     * that behave this way.
     */
    case 0xa002177d:		/* Cavium ThunderX */
    case 0x124b8086:		/* Intel 82380FB Mobile */
    case 0x060513d7:		/* Toshiba ???? */
	sc->flags |= PCIB_SUBTRACTIVE;
	break;

#if !(defined(NEW_PCIB) && defined(PCI_RES_BUS))
    /* Compaq R3000 BIOS sets wrong subordinate bus number. */
    case 0x00dd10de:
	{
	    char *cp;

	    if ((cp = FUNC7("smbios.planar.maker")) == NULL)
		break;
	    if (FUNC26(cp, "Compal", 6) != 0) {
		FUNC6(cp);
		break;
	    }
	    FUNC6(cp);
	    if ((cp = FUNC7("smbios.planar.product")) == NULL)
		break;
	    if (FUNC26(cp, "08A0", 4) != 0) {
		FUNC6(cp);
		break;
	    }
	    FUNC6(cp);
	    if (sc->bus.sub < 0xa) {
		FUNC15(dev, PCIR_SUBBUS_1, 0xa, 1);
		sc->bus.sub = FUNC14(dev, PCIR_SUBBUS_1, 1);
	    }
	    break;
	}
#endif
    }

    if (FUNC12(dev))
	sc->flags |= PCIB_DISABLE_MSI;

    if (FUNC13(dev))
	sc->flags |= PCIB_DISABLE_MSIX;

    /*
     * Intel 815, 845 and other chipsets say they are PCI-PCI bridges,
     * but have a ProgIF of 0x80.  The 82801 family (AA, AB, BAM/CAM,
     * BA/CA/DB and E) PCI bridges are HUB-PCI bridges, in Intelese.
     * This means they act as if they were subtractively decoding
     * bridges and pass all transactions.  Mark them and real ProgIf 1
     * parts as subtractive.
     */
    if ((FUNC10(dev) & 0xff00ffff) == 0x24008086 ||
      FUNC14(dev, PCIR_PROGIF, 1) == PCIP_BRIDGE_PCI_SUBTRACTIVE)
	sc->flags |= PCIB_SUBTRACTIVE;

#ifdef PCI_HP
    pcib_probe_hotplug(sc);
#endif
#ifdef NEW_PCIB
#ifdef PCI_RES_BUS
    pcib_setup_secbus(dev, &sc->bus, 1);
#endif
    pcib_probe_windows(sc);
#endif
#ifdef PCI_HP
    if (sc->flags & PCIB_HOTPLUG)
	    pcib_setup_hotplug(sc);
#endif
    if (bootverbose) {
	FUNC5(dev, "  domain            %d\n", sc->domain);
	FUNC5(dev, "  secondary bus     %d\n", sc->bus.sec);
	FUNC5(dev, "  subordinate bus   %d\n", sc->bus.sub);
#ifdef NEW_PCIB
	if (pcib_is_window_open(&sc->io))
	    device_printf(dev, "  I/O decode        0x%jx-0x%jx\n",
	      (uintmax_t)sc->io.base, (uintmax_t)sc->io.limit);
	if (pcib_is_window_open(&sc->mem))
	    device_printf(dev, "  memory decode     0x%jx-0x%jx\n",
	      (uintmax_t)sc->mem.base, (uintmax_t)sc->mem.limit);
	if (pcib_is_window_open(&sc->pmem))
	    device_printf(dev, "  prefetched decode 0x%jx-0x%jx\n",
	      (uintmax_t)sc->pmem.base, (uintmax_t)sc->pmem.limit);
#else
	if (FUNC17(sc))
	    FUNC5(dev, "  I/O decode        0x%x-0x%x\n",
	      sc->iobase, sc->iolimit);
	if (FUNC18(sc))
	    FUNC5(dev, "  memory decode     0x%jx-0x%jx\n",
	      (uintmax_t)sc->membase, (uintmax_t)sc->memlimit);
	if (FUNC19(sc))
	    FUNC5(dev, "  prefetched decode 0x%jx-0x%jx\n",
	      (uintmax_t)sc->pmembase, (uintmax_t)sc->pmemlimit);
#endif
	if (sc->bridgectl & (PCIB_BCR_ISA_ENABLE | PCIB_BCR_VGA_ENABLE) ||
	    sc->flags & PCIB_SUBTRACTIVE) {
		FUNC5(dev, "  special decode    ");
		comma = 0;
		if (sc->bridgectl & PCIB_BCR_ISA_ENABLE) {
			FUNC25("ISA");
			comma = 1;
		}
		if (sc->bridgectl & PCIB_BCR_VGA_ENABLE) {
			FUNC25("%sVGA", comma ? ", " : "");
			comma = 1;
		}
		if (sc->flags & PCIB_SUBTRACTIVE)
			FUNC25("%ssubtractive", comma ? ", " : "");
		FUNC25("\n");
	}
    }

    /*
     * Always enable busmastering on bridges so that transactions
     * initiated on the secondary bus are passed through to the
     * primary bus.
     */
    FUNC8(dev);
}