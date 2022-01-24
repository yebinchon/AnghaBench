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
struct msk_softc {int dummy; } ;
struct msk_if_softc {int /*<<< orphan*/  msk_ifp; int /*<<< orphan*/  msk_port; struct msk_softc* msk_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GM_SMI_CTRL ; 
 int GM_SMI_CT_OP_RD ; 
 int FUNC3 (int) ; 
 int GM_SMI_CT_RD_VAL ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  GM_SMI_DATA ; 
 int MSK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct msk_if_softc *sc_if, int phy, int reg)
{
	struct msk_softc *sc;
	int i, val;

	sc = sc_if->msk_softc;

        FUNC2(sc, sc_if->msk_port, GM_SMI_CTRL,
	    FUNC3(phy) | FUNC4(reg) | GM_SMI_CT_OP_RD);

	for (i = 0; i < MSK_TIMEOUT; i++) {
		FUNC0(1);
		val = FUNC1(sc, sc_if->msk_port, GM_SMI_CTRL);
		if ((val & GM_SMI_CT_RD_VAL) != 0) {
			val = FUNC1(sc, sc_if->msk_port, GM_SMI_DATA);
			break;
		}
	}

	if (i == MSK_TIMEOUT) {
		FUNC5(sc_if->msk_ifp, "phy failed to come ready\n");
		val = 0;
	}

	return (val);
}