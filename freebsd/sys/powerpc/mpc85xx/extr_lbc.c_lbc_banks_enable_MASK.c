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
typedef  scalar_t__ uint32_t ;
struct lbc_softc {int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; TYPE_1__* sc_banks; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ addr; int width; int decc; int wp; int msel; int atom; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  LBCRES_MSEL_FCM 132 
#define  LBCRES_MSEL_GPCM 131 
#define  LBCRES_MSEL_UPMA 130 
#define  LBCRES_MSEL_UPMB 129 
#define  LBCRES_MSEL_UPMC 128 
 int LBC_DEV_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct lbc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct lbc_softc *sc)
{
	uint32_t size;
	uint32_t regval;
	int error, i;

	for (i = 0; i < LBC_DEV_MAX; i++) {
		size = sc->sc_banks[i].size;
		if (size == 0)
			continue;

		/*
		 * Compute and program BR value.
		 */
		regval = sc->sc_banks[i].addr;
		switch (sc->sc_banks[i].width) {
		case 8:
			regval |= (1 << 11);
			break;
		case 16:
			regval |= (2 << 11);
			break;
		case 32:
			regval |= (3 << 11);
			break;
		default:
			error = EINVAL;
			goto fail;
		}
		regval |= (sc->sc_banks[i].decc << 9);
		regval |= (sc->sc_banks[i].wp << 8);
		regval |= (sc->sc_banks[i].msel << 5);
		regval |= (sc->sc_banks[i].atom << 2);
		regval |= 1;
		FUNC2(sc->sc_bst, sc->sc_bsh,
		    FUNC0(i), regval);

		/*
		 * Compute and program OR value.
		 */
		regval = FUNC3(size);
		switch (sc->sc_banks[i].msel) {
		case LBCRES_MSEL_GPCM:
			/* TODO Add flag support for option registers */
			regval |= 0x0ff7;
			break;
		case LBCRES_MSEL_FCM:
			/* TODO Add flag support for options register */
			regval |= 0x0796;
			break;
		case LBCRES_MSEL_UPMA:
		case LBCRES_MSEL_UPMB:
		case LBCRES_MSEL_UPMC:
			FUNC5("UPM mode not supported yet!");
			error = ENOSYS;
			goto fail;
		}
		FUNC2(sc->sc_bst, sc->sc_bsh,
		    FUNC1(i), regval);
	}

	return (0);

fail:
	FUNC4(sc);
	return (error);
}