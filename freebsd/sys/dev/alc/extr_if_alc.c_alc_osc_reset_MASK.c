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
struct alc_softc {int /*<<< orphan*/  alc_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_MISC ; 
 int /*<<< orphan*/  ALC_MISC2 ; 
 int /*<<< orphan*/  ALC_MISC3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AR816X_REV_A1 ; 
 scalar_t__ AR816X_REV_B0 ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MISC2_CALB_START ; 
 int MISC3_25M_BY_SW ; 
 int MISC3_25M_NOTO_INTNL ; 
 int MISC_INTNLOSC_OPEN ; 
 int MISC_ISO_ENB ; 
 int MISC_PSW_OCP_DEFAULT ; 
 int MISC_PSW_OCP_MASK ; 
 int MISC_PSW_OCP_SHIFT ; 

__attribute__((used)) static void
FUNC4(struct alc_softc *sc)
{
	uint32_t reg;

	reg = FUNC1(sc, ALC_MISC3);
	reg &= ~MISC3_25M_BY_SW;
	reg |= MISC3_25M_NOTO_INTNL;
	FUNC2(sc, ALC_MISC3, reg);

	reg = FUNC1(sc, ALC_MISC);
	if (FUNC0(sc->alc_rev) >= AR816X_REV_B0) {
		/*
		 * Restore over-current protection default value.
		 * This value could be reset by MAC reset.
		 */
		reg &= ~MISC_PSW_OCP_MASK;
		reg |= (MISC_PSW_OCP_DEFAULT << MISC_PSW_OCP_SHIFT);
		reg &= ~MISC_INTNLOSC_OPEN;
		FUNC2(sc, ALC_MISC, reg);
		FUNC2(sc, ALC_MISC, reg | MISC_INTNLOSC_OPEN);
		reg = FUNC1(sc, ALC_MISC2);
		reg &= ~MISC2_CALB_START;
		FUNC2(sc, ALC_MISC2, reg);
		FUNC2(sc, ALC_MISC2, reg | MISC2_CALB_START);

	} else {
		reg &= ~MISC_INTNLOSC_OPEN;
		/* Disable isolate for revision A devices. */
		if (FUNC0(sc->alc_rev) <= AR816X_REV_A1)
			reg &= ~MISC_ISO_ENB;
		FUNC2(sc, ALC_MISC, reg | MISC_INTNLOSC_OPEN);
		FUNC2(sc, ALC_MISC, reg);
	}

	FUNC3(20);
}