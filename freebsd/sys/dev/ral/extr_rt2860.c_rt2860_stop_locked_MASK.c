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
struct rt2860_softc {int sc_flags; int /*<<< orphan*/  rxq; int /*<<< orphan*/ * txq; scalar_t__ qfullmsk; scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_BBP_HRST ; 
 int /*<<< orphan*/  RT2860_INT_MASK ; 
 int RT2860_MAC_RX_EN ; 
 int RT2860_MAC_SRST ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int RT2860_MAC_TX_EN ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct rt2860_softc *sc)
{
	uint32_t tmp;
	int qid;

	if (sc->sc_flags & RT2860_RUNNING)
		FUNC7(sc, 0);	/* turn all LEDs off */

	FUNC3(&sc->watchdog_ch);
	sc->sc_tx_timer = 0;
	sc->sc_flags &= ~RT2860_RUNNING;

	/* disable interrupts */
	FUNC2(sc, RT2860_INT_MASK, 0);

	/* disable GP timer */
	FUNC6(sc, 0);

	/* disable Rx */
	tmp = FUNC1(sc, RT2860_MAC_SYS_CTRL);
	tmp &= ~(RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
	FUNC2(sc, RT2860_MAC_SYS_CTRL, tmp);

	/* reset adapter */
	FUNC2(sc, RT2860_MAC_SYS_CTRL, RT2860_BBP_HRST | RT2860_MAC_SRST);
	FUNC0(sc);
	FUNC2(sc, RT2860_MAC_SYS_CTRL, 0);

	/* reset Tx and Rx rings (and reclaim TXWIs) */
	sc->qfullmsk = 0;
	for (qid = 0; qid < 6; qid++)
		FUNC5(sc, &sc->txq[qid]);
	FUNC4(sc, &sc->rxq);
}