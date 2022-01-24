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
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_lock; scalar_t__ hn_suspended; } ;
struct hn_softc {int hn_tx_ring_cnt; struct hn_tx_ring* hn_tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct hn_softc *sc, int tx_ring_cnt)
{
	int i;

	FUNC0(tx_ring_cnt <= sc->hn_tx_ring_cnt,
	    ("invalid TX ring count %d", tx_ring_cnt));

	for (i = 0; i < tx_ring_cnt; ++i) {
		struct hn_tx_ring *txr = &sc->hn_tx_ring[i];

		FUNC1(&txr->hn_tx_lock);
		txr->hn_suspended = 0;
		FUNC2(&txr->hn_tx_lock);
	}
}