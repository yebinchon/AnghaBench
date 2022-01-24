#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_softc {int /*<<< orphan*/  sc_txproc_cnt; int /*<<< orphan*/  sc_txrix; scalar_t__ sc_softled; scalar_t__ sc_wd_timer; TYPE_1__* sc_cabq; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  sc_lastrx; TYPE_1__* sc_txq; int /*<<< orphan*/  sc_txq_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  axq_qnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_KTR_TXCOMP ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 scalar_t__ FUNC11 (struct ath_softc*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC12(void *arg, int npending)
{
	struct ath_softc *sc = arg;
	uint32_t txqs;

	FUNC2(sc);
	sc->sc_txproc_cnt++;
	txqs = sc->sc_txq_active;
	sc->sc_txq_active &= ~txqs;
	FUNC3(sc);

	FUNC1(sc);
	FUNC9(sc, HAL_PM_AWAKE);
	FUNC4(sc);

	FUNC0(sc, ATH_KTR_TXCOMP, 1,
	    "ath_tx_proc_q0: txqs=0x%08x", txqs);

	if (FUNC5(txqs, 0) && FUNC11(sc, &sc->sc_txq[0], 1))
		/* XXX why is lastrx updated in tx code? */
		sc->sc_lastrx = FUNC6(sc->sc_ah);
	if (FUNC5(txqs, sc->sc_cabq->axq_qnum))
		FUNC11(sc, sc->sc_cabq, 1);
	sc->sc_wd_timer = 0;

	if (sc->sc_softled)
		FUNC7(sc, sc->sc_txrix);

	FUNC2(sc);
	sc->sc_txproc_cnt--;
	FUNC3(sc);

	FUNC1(sc);
	FUNC8(sc);
	FUNC4(sc);

	FUNC10(sc);
}