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
struct rtwn_softc {int nrxchains; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int pa_setting; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_RF_IPA ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int,int,int) ; 

void
FUNC2(struct rtwn_softc *sc)
{
	struct r92c_softc *rs = sc->sc_priv;
	int i;

	for (i = 0; i < sc->nrxchains; i++) {
		if (rs->pa_setting & (1 << i))
			continue;
		FUNC0(sc, i, R92C_RF_IPA, 0x0f406);
		FUNC0(sc, i, R92C_RF_IPA, 0x4f406);
		FUNC0(sc, i, R92C_RF_IPA, 0x8f406);
		FUNC0(sc, i, R92C_RF_IPA, 0xcf406);
	}
	if (!(rs->pa_setting & 0x10))
		FUNC1(sc, 0x16, 0xf0, 0x90);
}