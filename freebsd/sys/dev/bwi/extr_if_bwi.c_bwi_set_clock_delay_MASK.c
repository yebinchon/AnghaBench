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
struct bwi_regwin {int rw_rev; } ;
struct bwi_softc {scalar_t__ sc_bbp_id; int sc_bbp_rev; int sc_cap; struct bwi_regwin sc_com_regwin; } ;
struct bwi_clock_freq {int clkfreq_max; } ;

/* Variables and functions */
 scalar_t__ BWI_BBPID_BCM4321 ; 
 int BWI_CAP_CLKMODE ; 
 int /*<<< orphan*/  BWI_CLOCK_INFO ; 
 int /*<<< orphan*/  BWI_CONTROL ; 
 int /*<<< orphan*/  BWI_CONTROL_MAGIC0 ; 
 int /*<<< orphan*/  BWI_CONTROL_MAGIC1 ; 
 int /*<<< orphan*/  BWI_FREQ_SEL_DELAY ; 
 int /*<<< orphan*/  BWI_PLL_ON_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_regwin*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,struct bwi_clock_freq*) ; 
 int FUNC4 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int
FUNC6(struct bwi_softc *sc)
{
	struct bwi_regwin *old, *com;
	int error;

	com = &sc->sc_com_regwin;
	if (!FUNC0(com))
		return 0;

	error = FUNC4(sc, com, &old);
	if (error)
		return error;

	if (sc->sc_bbp_id == BWI_BBPID_BCM4321) {
		if (sc->sc_bbp_rev == 0)
			FUNC2(sc, BWI_CONTROL, BWI_CONTROL_MAGIC0);
		else if (sc->sc_bbp_rev == 1)
			FUNC2(sc, BWI_CONTROL, BWI_CONTROL_MAGIC1);
	}

	if (sc->sc_cap & BWI_CAP_CLKMODE) {
		if (com->rw_rev >= 10) {
			FUNC1(sc, BWI_CLOCK_INFO, 0xffff, 0x40000);
		} else {
			struct bwi_clock_freq freq;

			FUNC3(sc, &freq);
			FUNC2(sc, BWI_PLL_ON_DELAY,
				FUNC5(freq.clkfreq_max * 150, 1000000));
			FUNC2(sc, BWI_FREQ_SEL_DELAY,
				FUNC5(freq.clkfreq_max * 15, 1000000));
		}
	}

	return FUNC4(sc, old, NULL);
}