#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct run_softc {int rf24_20mhz; int rf24_40mhz; int /*<<< orphan*/  bbp26; int /*<<< orphan*/  bbp25; } ;
struct TYPE_3__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3070_GPIO_SWITCH ; 
 int /*<<< orphan*/  RT3070_LDO_CFG0 ; 
 int /*<<< orphan*/  RT3070_OPT_14 ; 
 int RT3593_AUTOTUNE_BYPASS ; 
 int RT5390_RESCAL ; 
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* rt3593_def_rf ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct run_softc *sc)
{
	uint32_t tmp;
	uint8_t rf;
	u_int i;

	/* Disable the GPIO bits 4 and 7 for LNA PE control. */
	FUNC4(sc, RT3070_GPIO_SWITCH, &tmp);
	tmp &= ~(1 << 4 | 1 << 7);
	FUNC7(sc, RT3070_GPIO_SWITCH, tmp);

	/* Initialize RF registers to default value. */
	for (i = 0; i < FUNC0(rt3593_def_rf); i++) {
		FUNC6(sc, rt3593_def_rf[i].reg,
		    rt3593_def_rf[i].val);
	}

	/* Toggle RF R2 to initiate calibration. */
	FUNC6(sc, 2, RT5390_RESCAL);

	/* Initialize RF frequency offset. */
	FUNC1(sc);

	FUNC5(sc, 18, &rf);
	FUNC6(sc, 18, rf | RT3593_AUTOTUNE_BYPASS);

	/*
	 * Increase voltage from 1.2V to 1.35V, wait for 1 msec to
	 * decrease voltage back to 1.2V.
	 */
	FUNC4(sc, RT3070_LDO_CFG0, &tmp);
	tmp = (tmp & ~0x1f000000) | 0x0d000000;
	FUNC7(sc, RT3070_LDO_CFG0, tmp);
	FUNC3(sc, 1);
	tmp = (tmp & ~0x1f000000) | 0x01000000;
	FUNC7(sc, RT3070_LDO_CFG0, tmp);

	sc->rf24_20mhz = 0x1f;
	sc->rf24_40mhz = 0x2f;

	/* Save default BBP registers 25 and 26 values. */
	FUNC2(sc, 25, &sc->bbp25);
	FUNC2(sc, 26, &sc->bbp26);

	FUNC4(sc, RT3070_OPT_14, &tmp);
	FUNC7(sc, RT3070_OPT_14, tmp | 1);
}