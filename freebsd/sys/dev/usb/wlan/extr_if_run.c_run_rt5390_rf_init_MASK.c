#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct run_softc {int mac_ver; int mac_rev; int rf24_20mhz; int rf24_40mhz; } ;
struct TYPE_5__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3070_OPT_14 ; 
 int RT5390_RESCAL ; 
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* rt5390_def_rf ; 
 TYPE_1__* rt5392_def_rf ; 
 TYPE_1__* rt5592_def_rf ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct run_softc *sc)
{
	uint32_t tmp;
	uint8_t rf;
	u_int i;

	/* Toggle RF R2 to initiate calibration. */
	if (sc->mac_ver == 0x5390) {
		FUNC4(sc, 2, &rf);
		FUNC5(sc, 2, rf | RT5390_RESCAL);
		FUNC2(sc, 10);
		FUNC5(sc, 2, rf & ~RT5390_RESCAL);
	} else {
		FUNC5(sc, 2, RT5390_RESCAL);
		FUNC2(sc, 10);
	}

	/* Initialize RF registers to default value. */
	if (sc->mac_ver == 0x5592) {
		for (i = 0; i < FUNC0(rt5592_def_rf); i++) {
			FUNC5(sc, rt5592_def_rf[i].reg,
			    rt5592_def_rf[i].val);
		}
		/* Initialize RF frequency offset. */
		FUNC1(sc);
	} else if (sc->mac_ver == 0x5392) {
		for (i = 0; i < FUNC0(rt5392_def_rf); i++) {
			FUNC5(sc, rt5392_def_rf[i].reg,
			    rt5392_def_rf[i].val);
		}
		if (sc->mac_rev >= 0x0223) {
			FUNC5(sc, 23, 0x0f);
			FUNC5(sc, 24, 0x3e);
			FUNC5(sc, 51, 0x32);
			FUNC5(sc, 53, 0x22);
			FUNC5(sc, 56, 0xc1);
			FUNC5(sc, 59, 0x0f);
		}
	} else {
		for (i = 0; i < FUNC0(rt5390_def_rf); i++) {
			FUNC5(sc, rt5390_def_rf[i].reg,
			    rt5390_def_rf[i].val);
		}
		if (sc->mac_rev >= 0x0502) {
			FUNC5(sc, 6, 0xe0);
			FUNC5(sc, 25, 0x80);
			FUNC5(sc, 46, 0x73);
			FUNC5(sc, 53, 0x00);
			FUNC5(sc, 56, 0x42);
			FUNC5(sc, 61, 0xd1);
		}
	}

	sc->rf24_20mhz = 0x1f;	/* default value */
	sc->rf24_40mhz = (sc->mac_ver == 0x5592) ? 0 : 0x2f;

	if (sc->mac_rev < 0x0211)
		FUNC5(sc, 27, 0x3);

	FUNC3(sc, RT3070_OPT_14, &tmp);
	FUNC6(sc, RT3070_OPT_14, tmp | 1);
}