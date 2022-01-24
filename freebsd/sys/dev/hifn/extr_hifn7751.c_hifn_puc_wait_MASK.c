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
struct hifn_softc {int sc_flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HIFN_0_PUCTRL ; 
 int HIFN_0_PUCTRL2 ; 
 int HIFN_IS_7956 ; 
 int HIFN_PUCTRL_RESET ; 
 int FUNC1 (struct hifn_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct hifn_softc *sc)
{
	int i;
	int reg = HIFN_0_PUCTRL;

	if (sc->sc_flags & HIFN_IS_7956) {
		reg = HIFN_0_PUCTRL2;
	}

	for (i = 5000; i > 0; i--) {
		FUNC0(1);
		if (!(FUNC1(sc, reg) & HIFN_PUCTRL_RESET))
			break;
	}
	if (!i)
		FUNC2(sc->sc_dev, "proc unit did not reset\n");
}