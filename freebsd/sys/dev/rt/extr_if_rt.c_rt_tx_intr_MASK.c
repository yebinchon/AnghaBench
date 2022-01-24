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
struct rt_softc {int intr_disable_mask; int int_tx_done_mask; int intr_pending_mask; int /*<<< orphan*/  tx_done_task; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/ * tx_interrupts; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int RT_SOFTC_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct rt_softc *sc, int qid)
{

	FUNC0(qid >= 0 && qid < RT_SOFTC_TX_RING_COUNT,
		("%s: Tx interrupt: invalid qid=%d\n",
		 FUNC4(sc->dev), qid));

	FUNC1(sc, RT_DEBUG_INTR, "Tx interrupt: qid=%d\n", qid);

	sc->tx_interrupts[qid]++;
	FUNC2(sc);

	if (!(sc->intr_disable_mask & (sc->int_tx_done_mask << qid))) {
		FUNC5(sc, (sc->int_tx_done_mask << qid));
		FUNC6(sc->taskqueue, &sc->tx_done_task);
	}

	sc->intr_pending_mask |= (sc->int_tx_done_mask << qid);
	FUNC3(sc);
}