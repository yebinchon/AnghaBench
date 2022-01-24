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
struct hn_txdesc {int refs; scalar_t__ chim_index; scalar_t__ chim_size; int flags; int /*<<< orphan*/  agg_list; int /*<<< orphan*/ * m; } ;
struct hn_tx_ring {scalar_t__ hn_txdesc_avail; int /*<<< orphan*/  hn_txdesc_br; int /*<<< orphan*/  hn_txlist_spin; int /*<<< orphan*/  hn_txlist; } ;

/* Variables and functions */
 scalar_t__ HN_NVS_CHIM_IDX_INVALID ; 
 int HN_TXD_FLAG_DMAMAP ; 
 int HN_TXD_FLAG_ONAGG ; 
 int HN_TXD_FLAG_ONLIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct hn_txdesc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 struct hn_txdesc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline struct hn_txdesc *
FUNC8(struct hn_tx_ring *txr)
{
	struct hn_txdesc *txd;

#ifndef HN_USE_TXDESC_BUFRING
	FUNC6(&txr->hn_txlist_spin);
	txd = FUNC1(&txr->hn_txlist);
	if (txd != NULL) {
		FUNC0(txr->hn_txdesc_avail > 0,
		    ("txdesc_get: invalid txd avail %d", txr->hn_txdesc_avail));
		txr->hn_txdesc_avail--;
		FUNC2(&txr->hn_txlist, link);
	}
	FUNC7(&txr->hn_txlist_spin);
#else
	txd = buf_ring_dequeue_sc(txr->hn_txdesc_br);
#endif

	if (txd != NULL) {
#ifdef HN_USE_TXDESC_BUFRING
#ifdef HN_DEBUG
		atomic_subtract_int(&txr->hn_txdesc_avail, 1);
#endif
#endif	/* HN_USE_TXDESC_BUFRING */
		FUNC0(txd->m == NULL && txd->refs == 0 &&
		    FUNC3(&txd->agg_list) &&
		    txd->chim_index == HN_NVS_CHIM_IDX_INVALID &&
		    txd->chim_size == 0 &&
		    (txd->flags & HN_TXD_FLAG_ONLIST) &&
		    (txd->flags & HN_TXD_FLAG_ONAGG) == 0 &&
		    (txd->flags & HN_TXD_FLAG_DMAMAP) == 0, ("invalid txd"));
		txd->flags &= ~HN_TXD_FLAG_ONLIST;
		txd->refs = 1;
	}
	return txd;
}