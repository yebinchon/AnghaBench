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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct run_softc {scalar_t__ rf_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_GPIO_CTRL ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_ANTSEL ; 
 scalar_t__ RT5390_RF_5370 ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct run_softc *sc, int aux)
{
	uint32_t tmp;
	uint8_t bbp152;

	if (aux) {
		if (sc->rf_rev == RT5390_RF_5370) {
			FUNC0(sc, 152, &bbp152);
			FUNC1(sc, 152, bbp152 & ~0x80);
		} else {
			FUNC2(sc, RT2860_MCU_CMD_ANTSEL, 0);
			FUNC3(sc, RT2860_GPIO_CTRL, &tmp);
			FUNC4(sc, RT2860_GPIO_CTRL, (tmp & ~0x0808) | 0x08);
		}
	} else {
		if (sc->rf_rev == RT5390_RF_5370) {
			FUNC0(sc, 152, &bbp152);
			FUNC1(sc, 152, bbp152 | 0x80);
		} else {
			FUNC2(sc, RT2860_MCU_CMD_ANTSEL, 1);
			FUNC3(sc, RT2860_GPIO_CTRL, &tmp);
			FUNC4(sc, RT2860_GPIO_CTRL, tmp & ~0x0808);
		}
	}
}