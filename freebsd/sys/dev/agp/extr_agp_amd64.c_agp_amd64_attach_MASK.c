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
typedef  int uint32_t ;
struct agp_gatt {int ag_physical; } ;
struct agp_amd64_softc {int* mctrl; int n_mctrl; int initial_aperture; int /*<<< orphan*/  via_agp; struct agp_gatt* gatt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_APCTRL ; 
 int AGP_AMD64_APCTRL_DISGARTCPU ; 
 int AGP_AMD64_APCTRL_DISGARTIO ; 
 int AGP_AMD64_APCTRL_GARTEN ; 
 int /*<<< orphan*/  AGP_AMD64_ATTBASE ; 
 int AGP_AMD64_ATTBASE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int AMD64_MAX_MCTRL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int PCI_SLOTMAX ; 
 struct agp_gatt* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct agp_amd64_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC12(dev);
	struct agp_gatt *gatt;
	uint32_t devid;
	int i, n, error;

	for (i = 0, n = 0; i < PCI_SLOTMAX && n < AMD64_MAX_MCTRL; i++) {
		devid = FUNC14(0, i, 3, 0, 4);
		if (devid == 0x11031022 || devid == 0x12031022) {
			sc->mctrl[n] = i;
			n++;
		}
	}
	if (n == 0)
		return (ENXIO);

	sc->n_mctrl = n;

	if (bootverbose)
		FUNC13(dev, "%d Miscellaneous Control unit(s) found.\n",
		    sc->n_mctrl);

	if ((error = FUNC10(dev)))
		return (error);

	sc->initial_aperture = FUNC0(dev);

	for (;;) {
		gatt = FUNC2(dev);
		if (gatt)
			break;

		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC1(dev, FUNC0(dev) / 2)) {
			FUNC11(dev);
			return (ENOMEM);
		}
	}
	sc->gatt = gatt;

	switch (FUNC16(dev)) {
	case 0x10b9:	/* ULi */
		FUNC5(dev);
		if (FUNC6(dev, sc->initial_aperture))
			return (ENXIO);
		break;

	case 0x10de:	/* nVidia */
		FUNC3(dev);
		if (FUNC4(dev, sc->initial_aperture))
			return (ENXIO);
		break;

	case 0x1106:	/* VIA */
		sc->via_agp = FUNC8();
		if (sc->via_agp) {
			FUNC7(dev);
			if (FUNC9(dev,
			    sc->initial_aperture))
				return (ENXIO);
		}
		break;
	}

	/* Install the gatt and enable aperture. */
	for (i = 0; i < sc->n_mctrl; i++) {
		FUNC15(0, sc->mctrl[i], 3, AGP_AMD64_ATTBASE,
		    (uint32_t)(gatt->ag_physical >> 8) & AGP_AMD64_ATTBASE_MASK,
		    4);
		FUNC15(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL,
		    (FUNC14(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL, 4) |
		    AGP_AMD64_APCTRL_GARTEN) &
		    ~(AGP_AMD64_APCTRL_DISGARTCPU | AGP_AMD64_APCTRL_DISGARTIO),
		    4);
	}

	return (0);
}