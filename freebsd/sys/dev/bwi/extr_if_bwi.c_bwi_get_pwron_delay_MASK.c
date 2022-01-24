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
struct bwi_regwin {int dummy; } ;
struct bwi_softc {int sc_cap; int /*<<< orphan*/  sc_pwron_delay; struct bwi_regwin sc_com_regwin; } ;
struct bwi_clock_freq {int /*<<< orphan*/  clkfreq_min; } ;

/* Variables and functions */
 int BWI_CAP_CLKMODE ; 
 int /*<<< orphan*/  BWI_DBG_ATTACH ; 
 int /*<<< orphan*/  BWI_PLL_ON_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_regwin*) ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*,struct bwi_clock_freq*) ; 
 int FUNC5 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bwi_softc *sc)
{
	struct bwi_regwin *com, *old;
	struct bwi_clock_freq freq;
	uint32_t val;
	int error;

	com = &sc->sc_com_regwin;
	FUNC3(FUNC0(com), ("no regwin"));

	if ((sc->sc_cap & BWI_CAP_CLKMODE) == 0)
		return 0;

	error = FUNC5(sc, com, &old);
	if (error)
		return error;

	FUNC4(sc, &freq);

	val = FUNC1(sc, BWI_PLL_ON_DELAY);
	sc->sc_pwron_delay = FUNC6((val + 2) * 1000000, freq.clkfreq_min);
	FUNC2(sc, BWI_DBG_ATTACH, "power on delay %u\n", sc->sc_pwron_delay);

	return FUNC5(sc, old, NULL);
}