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
typedef  int u_int32_t ;
struct agp_ati_softc {int is_rs300; int initial_aperture; int ag_pdir; int /*<<< orphan*/  regs; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATI_GART_BASE ; 
 int /*<<< orphan*/  ATI_GART_FEATURE_ID ; 
 int ATI_GART_MMADDR ; 
 int ATI_RS100_APSIZE ; 
 int ATI_RS100_IG_AGPMODE ; 
 int ATI_RS300_APSIZE ; 
 int ATI_RS300_IG_AGPMODE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct agp_ati_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct agp_ati_softc *sc = FUNC8(dev);
	int error, rid;
	u_int32_t temp;
	u_int32_t apsize_reg, agpmode_reg;

	error = FUNC5(dev);
	if (error)
		return error;

	switch (FUNC9(dev)) {
	case 0xcab01002: /* ATI RS100 AGP bridge */
	case 0xcab21002: /* ATI RS200 AGP bridge */
	case 0xcbb21002: /* ATI RS200M AGP bridge */
	case 0xcab31002: /* ATI RS250 AGP bridge */
		sc->is_rs300 = 0;
		apsize_reg = ATI_RS100_APSIZE;
		agpmode_reg = ATI_RS100_IG_AGPMODE;
		break;
	case 0x58301002: /* ATI RS300_100 AGP bridge */
	case 0x58311002: /* ATI RS300_133 AGP bridge */
	case 0x58321002: /* ATI RS300_166 AGP bridge */
	case 0x58331002: /* ATI RS300_200 AGP bridge */
		sc->is_rs300 = 1;
		apsize_reg = ATI_RS300_APSIZE;
		agpmode_reg = ATI_RS300_IG_AGPMODE;
		break;
	default:
		/* Unknown chipset */
		return EINVAL;
	}

	rid = ATI_GART_MMADDR;
	sc->regs = FUNC7(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!sc->regs) {
		FUNC6(dev);
		return ENOMEM;
	}

	sc->bst = FUNC13(sc->regs);
	sc->bsh = FUNC12(sc->regs);

	sc->initial_aperture = FUNC1(dev);

	for (;;) {
		if (FUNC4(dev) == 0)
			break;

		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC2(dev, FUNC1(dev) / 2))
			return ENOMEM;
	}

	temp = FUNC10(dev, apsize_reg, 4);
	FUNC11(dev, apsize_reg, temp | 1, 4);

	FUNC11(dev, agpmode_reg, 0x20000, 4);

	FUNC3(ATI_GART_FEATURE_ID, 0x00060000);

	temp = FUNC10(dev, 4, 4);	/* XXX: Magic reg# */
	FUNC11(dev, 4, temp | (1 << 14), 4);

	FUNC3(ATI_GART_BASE, sc->ag_pdir);

	FUNC0(dev);

	return 0;
}