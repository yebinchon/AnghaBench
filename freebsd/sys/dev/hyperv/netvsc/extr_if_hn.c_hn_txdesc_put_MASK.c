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
struct hn_txdesc {int flags; scalar_t__ refs; scalar_t__ chim_index; scalar_t__ chim_size; int /*<<< orphan*/ * m; int /*<<< orphan*/  data_dmap; int /*<<< orphan*/  agg_list; } ;
struct hn_tx_ring {scalar_t__ hn_txdesc_avail; scalar_t__ hn_txdesc_cnt; int /*<<< orphan*/  hn_txdesc_br; int /*<<< orphan*/  hn_txlist_spin; int /*<<< orphan*/  hn_txlist; int /*<<< orphan*/  hn_tx_data_dtag; int /*<<< orphan*/  hn_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ HN_NVS_CHIM_IDX_INVALID ; 
 int HN_TXD_FLAG_DMAMAP ; 
 int HN_TXD_FLAG_ONAGG ; 
 int HN_TXD_FLAG_ONLIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hn_txdesc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct hn_txdesc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  agg_link ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hn_txdesc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC14(struct hn_tx_ring *txr, struct hn_txdesc *txd)
{

	FUNC0((txd->flags & HN_TXD_FLAG_ONLIST) == 0,
	    ("put an onlist txd %#x", txd->flags));
	FUNC0((txd->flags & HN_TXD_FLAG_ONAGG) == 0,
	    ("put an onagg txd %#x", txd->flags));

	FUNC0(txd->refs > 0, ("invalid txd refs %d", txd->refs));
	if (FUNC6(&txd->refs, -1) != 1)
		return 0;

	if (!FUNC2(&txd->agg_list)) {
		struct hn_txdesc *tmp_txd;

		while ((tmp_txd = FUNC3(&txd->agg_list)) != NULL) {
			int freed;

			FUNC0(FUNC2(&tmp_txd->agg_list),
			    ("resursive aggregation on aggregated txdesc"));
			FUNC0((tmp_txd->flags & HN_TXD_FLAG_ONAGG),
			    ("not aggregated txdesc"));
			FUNC0((tmp_txd->flags & HN_TXD_FLAG_DMAMAP) == 0,
			    ("aggregated txdesc uses dmamap"));
			FUNC0(tmp_txd->chim_index == HN_NVS_CHIM_IDX_INVALID,
			    ("aggregated txdesc consumes "
			     "chimney sending buffer"));
			FUNC0(tmp_txd->chim_size == 0,
			    ("aggregated txdesc has non-zero "
			     "chimney sending size"));

			FUNC4(&txd->agg_list, agg_link);
			tmp_txd->flags &= ~HN_TXD_FLAG_ONAGG;
			freed = FUNC14(txr, tmp_txd);
			FUNC0(freed, ("failed to free aggregated txdesc"));
		}
	}

	if (txd->chim_index != HN_NVS_CHIM_IDX_INVALID) {
		FUNC0((txd->flags & HN_TXD_FLAG_DMAMAP) == 0,
		    ("chim txd uses dmamap"));
		FUNC10(txr->hn_sc, txd->chim_index);
		txd->chim_index = HN_NVS_CHIM_IDX_INVALID;
		txd->chim_size = 0;
	} else if (txd->flags & HN_TXD_FLAG_DMAMAP) {
		FUNC8(txr->hn_tx_data_dtag,
		    txd->data_dmap, BUS_DMASYNC_POSTWRITE);
		FUNC9(txr->hn_tx_data_dtag,
		    txd->data_dmap);
		txd->flags &= ~HN_TXD_FLAG_DMAMAP;
	}

	if (txd->m != NULL) {
		FUNC11(txd->m);
		txd->m = NULL;
	}

	txd->flags |= HN_TXD_FLAG_ONLIST;
#ifndef HN_USE_TXDESC_BUFRING
	FUNC12(&txr->hn_txlist_spin);
	FUNC0(txr->hn_txdesc_avail >= 0 &&
	    txr->hn_txdesc_avail < txr->hn_txdesc_cnt,
	    ("txdesc_put: invalid txd avail %d", txr->hn_txdesc_avail));
	txr->hn_txdesc_avail++;
	FUNC1(&txr->hn_txlist, txd, link);
	FUNC13(&txr->hn_txlist_spin);
#else	/* HN_USE_TXDESC_BUFRING */
#ifdef HN_DEBUG
	atomic_add_int(&txr->hn_txdesc_avail, 1);
#endif
	buf_ring_enqueue(txr->hn_txdesc_br, txd);
#endif	/* !HN_USE_TXDESC_BUFRING */

	return 1;
}