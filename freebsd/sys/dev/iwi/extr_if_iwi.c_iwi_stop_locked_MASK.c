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
struct iwi_softc {int flags; int /*<<< orphan*/  fw_state; scalar_t__ sc_busy_timer; scalar_t__ sc_state_timer; scalar_t__ sc_tx_timer; int /*<<< orphan*/  rxq; int /*<<< orphan*/ * txq; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  sc_rftimer; int /*<<< orphan*/  sc_wdtimer; scalar_t__ sc_blinking; int /*<<< orphan*/  sc_ledtimer; scalar_t__ sc_softled; scalar_t__ sc_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWI_CSR_RST ; 
 int IWI_FLAG_ASSOCIATED ; 
 int IWI_FLAG_BUSY ; 
 int /*<<< orphan*/  IWI_FW_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_RST_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC8(void *priv)
{
	struct iwi_softc *sc = priv;

	FUNC1(sc);

	sc->sc_running = 0;

	if (sc->sc_softled) {
		FUNC2(&sc->sc_ledtimer);
		sc->sc_blinking = 0;
	}
	FUNC2(&sc->sc_wdtimer);
	FUNC2(&sc->sc_rftimer);

	FUNC6(sc);

	FUNC0(sc, IWI_CSR_RST, IWI_RST_SOFT_RESET);

	/* reset rings */
	FUNC3(sc, &sc->cmdq);
	FUNC5(sc, &sc->txq[0]);
	FUNC5(sc, &sc->txq[1]);
	FUNC5(sc, &sc->txq[2]);
	FUNC5(sc, &sc->txq[3]);
	FUNC4(sc, &sc->rxq);

	sc->sc_tx_timer = 0;
	sc->sc_state_timer = 0;
	sc->sc_busy_timer = 0;
	sc->flags &= ~(IWI_FLAG_BUSY | IWI_FLAG_ASSOCIATED);
	sc->fw_state = IWI_FW_IDLE;
	FUNC7(sc);
}