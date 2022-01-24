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
struct hn_tx_ring {scalar_t__ hn_txdesc_avail; scalar_t__ hn_txdesc_cnt; int /*<<< orphan*/  hn_txdesc_br; int /*<<< orphan*/  hn_txlist_spin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(struct hn_tx_ring *txr)
{
	bool pending = false;

#ifndef HN_USE_TXDESC_BUFRING
	FUNC1(&txr->hn_txlist_spin);
	if (txr->hn_txdesc_avail != txr->hn_txdesc_cnt)
		pending = true;
	FUNC2(&txr->hn_txlist_spin);
#else
	if (!buf_ring_full(txr->hn_txdesc_br))
		pending = true;
#endif
	return (pending);
}