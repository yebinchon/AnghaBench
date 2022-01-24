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
struct rt_softc {int rx_ring_count; int intr_disable_mask; int int_rx_done_mask; int intr_pending_mask; int /*<<< orphan*/  rx_done_task; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/ * rx_interrupts; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct rt_softc *sc, int qid)
{
	FUNC0(qid >= 0 && qid < sc->rx_ring_count,
		("%s: Rx interrupt: invalid qid=%d\n",
		 FUNC4(sc->dev), qid));

	FUNC1(sc, RT_DEBUG_INTR, "Rx interrupt\n");
	sc->rx_interrupts[qid]++;
	FUNC2(sc);

	if (!(sc->intr_disable_mask & (sc->int_rx_done_mask << qid))) {
		FUNC5(sc, (sc->int_rx_done_mask << qid));
		FUNC6(sc->taskqueue, &sc->rx_done_task);
	}

	sc->intr_pending_mask |= (sc->int_rx_done_mask << qid);
	FUNC3(sc);
}