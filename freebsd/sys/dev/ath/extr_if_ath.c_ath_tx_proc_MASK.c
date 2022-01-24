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
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_softc {int /*<<< orphan*/  sc_txproc_cnt; int /*<<< orphan*/  sc_txrix; scalar_t__ sc_softled; scalar_t__ sc_wd_timer; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  sc_lastrx; int /*<<< orphan*/ * sc_txq; int /*<<< orphan*/  sc_txq_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_KTR_TXCOMP ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 scalar_t__ FUNC4 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int HAL_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 scalar_t__ FUNC12 (struct ath_softc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(void *arg, int npending)
{
	struct ath_softc *sc = arg;
	int i, nacked;
	uint32_t txqs;

	FUNC2(sc);
	sc->sc_txproc_cnt++;
	txqs = sc->sc_txq_active;
	sc->sc_txq_active &= ~txqs;
	FUNC3(sc);

	FUNC1(sc);
	FUNC10(sc, HAL_PM_AWAKE);
	FUNC5(sc);

	FUNC0(sc, ATH_KTR_TXCOMP, 1, "ath_tx_proc: txqs=0x%08x", txqs);

	/*
	 * Process each active queue.
	 */
	nacked = 0;
	for (i = 0; i < HAL_NUM_TX_QUEUES; i++)
		if (FUNC4(sc, i) && FUNC6(txqs, i))
			nacked += FUNC12(sc, &sc->sc_txq[i], 1);
	if (nacked)
		sc->sc_lastrx = FUNC7(sc->sc_ah);

	sc->sc_wd_timer = 0;

	if (sc->sc_softled)
		FUNC8(sc, sc->sc_txrix);

	FUNC2(sc);
	sc->sc_txproc_cnt--;
	FUNC3(sc);

	FUNC1(sc);
	FUNC9(sc);
	FUNC5(sc);

	FUNC11(sc);
}