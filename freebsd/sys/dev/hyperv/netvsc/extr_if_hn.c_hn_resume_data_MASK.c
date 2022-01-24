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
struct hn_tx_ring {int /*<<< orphan*/  hn_txeof_task; int /*<<< orphan*/  hn_tx_taskq; } ;
struct hn_softc {int hn_tx_ring_cnt; int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_tx_ring*) ; 
 int /*<<< orphan*/  hn_use_if_start ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct hn_softc *sc)
{
	int i;

	FUNC0(sc);

	/*
	 * Re-enable RX.
	 */
	FUNC2(sc);

	/*
	 * Make sure to clear suspend status on "all" TX rings,
	 * since hn_tx_ring_inuse can be changed after
	 * hn_suspend_data().
	 */
	FUNC1(sc, sc->hn_tx_ring_cnt);

#ifdef HN_IFSTART_SUPPORT
	if (!hn_use_if_start)
#endif
	{
		/*
		 * Flush unused drbrs, since hn_tx_ring_inuse may be
		 * reduced.
		 */
		for (i = sc->hn_tx_ring_inuse; i < sc->hn_tx_ring_cnt; ++i)
			FUNC3(&sc->hn_tx_ring[i]);
	}

	/*
	 * Kick start TX.
	 */
	for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
		struct hn_tx_ring *txr = &sc->hn_tx_ring[i];

		/*
		 * Use txeof task, so that any pending oactive can be
		 * cleared properly.
		 */
		FUNC4(txr->hn_tx_taskq, &txr->hn_txeof_task);
	}
}