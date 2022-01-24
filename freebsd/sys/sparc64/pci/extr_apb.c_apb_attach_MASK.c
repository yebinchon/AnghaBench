#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {void* sub; void* sec; } ;
struct TYPE_5__ {TYPE_1__ bus; void* domain; void* pribus; void* bridgectl; } ;
struct TYPE_6__ {TYPE_2__ ops_pcib_sc; } ;
struct apb_softc {void* sc_memmap; void* sc_iomap; TYPE_3__ sc_bsc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  APBR_IOMAP ; 
 int /*<<< orphan*/  APBR_MEMMAP ; 
 int /*<<< orphan*/  APB_IO_SCALE ; 
 int /*<<< orphan*/  APB_MEM_SCALE ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCIR_BRIDGECTL_1 ; 
 int /*<<< orphan*/  PCIR_PRIBUS_1 ; 
 int /*<<< orphan*/  PCIR_SECBUS_1 ; 
 int /*<<< orphan*/  PCIR_SUBBUS_1 ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct apb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct apb_softc *sc;
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;

	sc = FUNC5(dev);

	/*
	 * Get current bridge configuration.
	 */
	sc->sc_bsc.ops_pcib_sc.domain = FUNC11(dev);
	sc->sc_bsc.ops_pcib_sc.pribus = FUNC10(dev);
	FUNC13(dev, PCIR_PRIBUS_1, sc->sc_bsc.ops_pcib_sc.pribus, 1);
	sc->sc_bsc.ops_pcib_sc.bus.sec =
	    FUNC12(dev, PCIR_SECBUS_1, 1);
	sc->sc_bsc.ops_pcib_sc.bus.sub =
	    FUNC12(dev, PCIR_SUBBUS_1, 1);
	sc->sc_bsc.ops_pcib_sc.bridgectl =
	    FUNC12(dev, PCIR_BRIDGECTL_1, 2);
	sc->sc_iomap = FUNC12(dev, APBR_IOMAP, 1);
	sc->sc_memmap = FUNC12(dev, APBR_MEMMAP, 1);

	/*
	 * Setup SYSCTL reporting nodes.
	 */
	sctx = FUNC6(dev);
	soid = FUNC7(dev);
	FUNC0(sctx, FUNC1(soid), OID_AUTO, "domain",
	    CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.domain, 0,
	    "Domain number");
	FUNC0(sctx, FUNC1(soid), OID_AUTO, "pribus",
	    CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.pribus, 0,
	    "Primary bus number");
	FUNC0(sctx, FUNC1(soid), OID_AUTO, "secbus",
	    CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.bus.sec, 0,
	    "Secondary bus number");
	FUNC0(sctx, FUNC1(soid), OID_AUTO, "subbus",
	    CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.bus.sub, 0,
	    "Subordinate bus number");

	FUNC9(dev);

	if (bootverbose) {
		FUNC8(dev, "  domain            %d\n",
		    sc->sc_bsc.ops_pcib_sc.domain);
		FUNC8(dev, "  secondary bus     %d\n",
		    sc->sc_bsc.ops_pcib_sc.bus.sec);
		FUNC8(dev, "  subordinate bus   %d\n",
		    sc->sc_bsc.ops_pcib_sc.bus.sub);
		FUNC8(dev, "  I/O decode        ");
		FUNC2(sc->sc_iomap, APB_IO_SCALE);
		FUNC14("\n");
		FUNC8(dev, "  memory decode     ");
		FUNC2(sc->sc_memmap, APB_MEM_SCALE);
		FUNC14("\n");
	}

	FUNC4(dev, "pci", -1);
	return (FUNC3(dev));
}