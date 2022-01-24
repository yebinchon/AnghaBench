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
struct ath_txq {int axq_ac; } ;
struct ath_softc {struct ath_txq** sc_ac2q; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HAL_TX_QUEUE_DATA ; 
 struct ath_txq* FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct ath_txq**) ; 

__attribute__((used)) static int
FUNC3(struct ath_softc *sc, int ac, int haltype)
{
	struct ath_txq *txq;

	if (ac >= FUNC2(sc->sc_ac2q)) {
		FUNC1(sc->sc_dev, "AC %u out of range, max %zu!\n",
			ac, FUNC2(sc->sc_ac2q));
		return 0;
	}
	txq = FUNC0(sc, HAL_TX_QUEUE_DATA, haltype);
	if (txq != NULL) {
		txq->axq_ac = ac;
		sc->sc_ac2q[ac] = txq;
		return 1;
	} else
		return 0;
}