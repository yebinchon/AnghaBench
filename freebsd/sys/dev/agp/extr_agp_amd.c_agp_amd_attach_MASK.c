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
struct agp_amd_softc {int initial_aperture; struct agp_amd_gatt* gatt; int /*<<< orphan*/  regs; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct agp_amd_gatt {int /*<<< orphan*/  ag_pdir; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD751_ATTBASE ; 
 int /*<<< orphan*/  AGP_AMD751_MODECTRL ; 
 int /*<<< orphan*/  AGP_AMD751_MODECTRL2 ; 
 int /*<<< orphan*/  AGP_AMD751_MODECTRL2_GPDCE ; 
 int /*<<< orphan*/  AGP_AMD751_MODECTRL_SYNEN ; 
 int AGP_AMD751_REGISTERS ; 
 int /*<<< orphan*/  AGP_AMD751_STATUS ; 
 int AGP_AMD751_STATUS_GCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_amd_gatt* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct agp_amd_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct agp_amd_softc *sc = FUNC10(dev);
	struct agp_amd_gatt *gatt;
	int error, rid;

	error = FUNC7(dev);
	if (error)
		return error;

	rid = AGP_AMD751_REGISTERS;
	sc->regs = FUNC9(dev, SYS_RES_MEMORY, &rid,
					  RF_ACTIVE);
	if (!sc->regs) {
		FUNC8(dev);
		return ENOMEM;
	}

	sc->bst = FUNC13(sc->regs);
	sc->bsh = FUNC12(sc->regs);

	sc->initial_aperture = FUNC1(dev);

	for (;;) {
		gatt = FUNC6(dev);
		if (gatt)
			break;

		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC2(dev, FUNC1(dev) / 2))
			return ENOMEM;
	}
	sc->gatt = gatt;

	/* Install the gatt. */
	FUNC5(AGP_AMD751_ATTBASE, gatt->ag_pdir);
	
	/* Enable synchronisation between host and agp. */
	FUNC11(dev,
			 AGP_AMD751_MODECTRL,
			 AGP_AMD751_MODECTRL_SYNEN, 1);

	/* Set indexing mode for two-level and enable page dir cache */
	FUNC11(dev,
			 AGP_AMD751_MODECTRL2,
			 AGP_AMD751_MODECTRL2_GPDCE, 1);

	/* Enable the TLB and flush */
	FUNC4(AGP_AMD751_STATUS,
	       FUNC3(AGP_AMD751_STATUS) | AGP_AMD751_STATUS_GCE);
	FUNC0(dev);

	return 0;
}