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
struct hn_tx_ring {int hn_txdesc_cnt; int /*<<< orphan*/  hn_tx_lock; int /*<<< orphan*/  hn_txlist_spin; int /*<<< orphan*/ * hn_mbuf_br; int /*<<< orphan*/ * hn_txdesc; int /*<<< orphan*/ * hn_txdesc_br; int /*<<< orphan*/ * hn_tx_rndis_dtag; int /*<<< orphan*/ * hn_tx_data_dtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_tx_ring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct hn_tx_ring *txr)
{
	int i;

	if (txr->hn_txdesc == NULL)
		return;

	/*
	 * NOTE:
	 * Because the freeing of aggregated txds will be deferred
	 * to the aggregating txd, two passes are used here:
	 * - The first pass GCes any pending txds.  This GC is necessary,
	 *   since if the channels are revoked, hypervisor will not
	 *   deliver send-done for all pending txds.
	 * - The second pass frees the busdma stuffs, i.e. after all txds
	 *   were freed.
	 */
	for (i = 0; i < txr->hn_txdesc_cnt; ++i)
		FUNC4(txr, &txr->hn_txdesc[i]);
	for (i = 0; i < txr->hn_txdesc_cnt; ++i)
		FUNC3(&txr->hn_txdesc[i]);

	if (txr->hn_tx_data_dtag != NULL)
		FUNC1(txr->hn_tx_data_dtag);
	if (txr->hn_tx_rndis_dtag != NULL)
		FUNC1(txr->hn_tx_rndis_dtag);

#ifdef HN_USE_TXDESC_BUFRING
	buf_ring_free(txr->hn_txdesc_br, M_DEVBUF);
#endif

	FUNC2(txr->hn_txdesc, M_DEVBUF);
	txr->hn_txdesc = NULL;

	if (txr->hn_mbuf_br != NULL)
		FUNC0(txr->hn_mbuf_br, M_DEVBUF);

#ifndef HN_USE_TXDESC_BUFRING
	FUNC5(&txr->hn_txlist_spin);
#endif
	FUNC5(&txr->hn_tx_lock);
}