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
typedef  int u_int ;
struct wrqe {int wr_len; int /*<<< orphan*/ * wr; struct sge_wrq* wrq; } ;
struct sge_eq {size_t pidx; size_t dbidx; size_t cidx; int sidx; int /*<<< orphan*/  equiq; struct fw_eth_tx_pkt_wr* desc; } ;
struct sge_wrq {scalar_t__ nwr_pending; int ndesc_needed; int /*<<< orphan*/  wr_list; int /*<<< orphan*/  tx_wrs_copied; int /*<<< orphan*/  incomplete_wrs; struct sge_eq eq; } ;
struct fw_eth_tx_pkt_wr {int /*<<< orphan*/  equiq_to_len16; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EQ_ESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sge_eq*) ; 
 int F_FW_WR_EQUEQ ; 
 int F_FW_WR_EQUIQ ; 
 int FUNC1 (size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct wrqe* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct fw_eth_tx_pkt_wr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wrqe*) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  link ; 
 size_t FUNC12 (struct sge_eq*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,struct sge_eq*,int) ; 

__attribute__((used)) static void
FUNC14(struct adapter *sc, struct sge_wrq *wrq)
{
	struct sge_eq *eq = &wrq->eq;
	u_int available, dbdiff;	/* # of hardware descriptors */
	u_int n;
	struct wrqe *wr;
	struct fw_eth_tx_pkt_wr *dst;	/* any fw WR struct will do */

	FUNC0(eq);
	FUNC2(FUNC5(&wrq->incomplete_wrs));
	wr = FUNC3(&wrq->wr_list);
	FUNC2(wr != NULL);	/* Must be called with something useful to do */
	FUNC2(eq->pidx == eq->dbidx);
	dbdiff = 0;

	do {
		eq->cidx = FUNC12(eq);
		if (eq->pidx == eq->cidx)
			available = eq->sidx - 1;
		else
			available = FUNC1(eq->cidx, eq->pidx, eq->sidx) - 1;

		FUNC2(wr->wrq == wrq);
		n = FUNC10(wr->wr_len, EQ_ESIZE);
		if (available < n)
			break;

		dst = (void *)&eq->desc[eq->pidx];
		if (FUNC6(eq->sidx - eq->pidx > n)) {
			/* Won't wrap, won't end exactly at the status page. */
			FUNC8(&wr->wr[0], dst, wr->wr_len);
			eq->pidx += n;
		} else {
			int first_portion = (eq->sidx - eq->pidx) * EQ_ESIZE;

			FUNC8(&wr->wr[0], dst, first_portion);
			if (wr->wr_len > first_portion) {
				FUNC8(&wr->wr[first_portion], &eq->desc[0],
				    wr->wr_len - first_portion);
			}
			eq->pidx = n - (eq->sidx - eq->pidx);
		}
		wrq->tx_wrs_copied++;

		if (available < eq->sidx / 4 &&
		    FUNC7(&eq->equiq, 0, 1)) {
				/*
				 * XXX: This is not 100% reliable with some
				 * types of WRs.  But this is a very unusual
				 * situation for an ofld/ctrl queue anyway.
				 */
			dst->equiq_to_len16 |= FUNC11(F_FW_WR_EQUIQ |
			    F_FW_WR_EQUEQ);
		}

		dbdiff += n;
		if (dbdiff >= 16) {
			FUNC13(sc, eq, dbdiff);
			dbdiff = 0;
		}

		FUNC4(&wrq->wr_list, link);
		FUNC9(wr);
		FUNC2(wrq->nwr_pending > 0);
		wrq->nwr_pending--;
		FUNC2(wrq->ndesc_needed >= n);
		wrq->ndesc_needed -= n;
	} while ((wr = FUNC3(&wrq->wr_list)) != NULL);

	if (dbdiff)
		FUNC13(sc, eq, dbdiff);
}