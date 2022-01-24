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
typedef  size_t u_int ;
struct vi_info {struct port_info* pi; } ;
struct txpkts {int npkt; } ;
struct sge_eq {size_t pidx; size_t cidx; int sidx; size_t dbidx; size_t equeqidx; int /*<<< orphan*/  equiq; int /*<<< orphan*/ * desc; } ;
struct sge_txq {struct ifnet* ifp; struct sge_eq eq; } ;
struct port_info {struct adapter* adapter; } ;
struct mp_ring {int size; struct mbuf** items; struct sge_txq* cookie; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifnet {struct vi_info* if_softc; } ;
struct fw_eth_tx_pkts_wr {int /*<<< orphan*/  equiq_to_len16; } ;
struct adapter {int flags; } ;

/* Variables and functions */
 int EQ_ESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int F_FW_WR_EQUEQ ; 
 int F_FW_WR_EQUIQ ; 
 int FUNC1 (size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,int) ; 
 int IS_VF ; 
 int MC_RAW_WR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 size_t SGE_MAX_WR_NDESC ; 
 int /*<<< orphan*/  FUNC5 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC6 (struct sge_txq*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct mbuf*,struct txpkts*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct sge_eq*) ; 
 size_t FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 
 int FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct mbuf*) ; 
 scalar_t__ FUNC16 (struct sge_txq*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,struct sge_eq*,size_t) ; 
 int FUNC18 (struct sge_eq*) ; 
 scalar_t__ FUNC19 (struct mbuf*,struct mbuf*,struct txpkts*,size_t) ; 
 scalar_t__ FUNC20 (struct fw_eth_tx_pkts_wr*) ; 
 size_t FUNC21 (struct sge_txq*,void*,struct mbuf*,size_t) ; 
 size_t FUNC22 (struct adapter*,struct sge_txq*,void*,struct mbuf*,size_t) ; 
 size_t FUNC23 (struct sge_txq*,void*,struct mbuf*,size_t) ; 
 size_t FUNC24 (struct sge_txq*,struct fw_eth_tx_pkts_wr*,struct mbuf*,struct txpkts*,size_t) ; 

__attribute__((used)) static u_int
FUNC25(struct mp_ring *r, u_int cidx, u_int pidx)
{
	struct sge_txq *txq = r->cookie;
	struct sge_eq *eq = &txq->eq;
	struct ifnet *ifp = txq->ifp;
	struct vi_info *vi = ifp->if_softc;
	struct port_info *pi = vi->pi;
	struct adapter *sc = pi->adapter;
	u_int total, remaining;		/* # of packets */
	u_int available, dbdiff;	/* # of hardware descriptors */
	u_int n, next_cidx;
	struct mbuf *m0, *tail;
	struct txpkts txp;
	struct fw_eth_tx_pkts_wr *wr;	/* any fw WR struct will do */

	remaining = FUNC1(pidx, cidx, r->size);
	FUNC3(remaining > 0);	/* Must not be called without work to do. */
	total = 0;

	FUNC5(txq);
	if (FUNC7(FUNC10(eq))) {
		while (cidx != pidx) {
			m0 = r->items[cidx];
			FUNC13(m0);
			if (++cidx == r->size)
				cidx = 0;
		}
		FUNC16(txq, 2048);
		total = remaining;
		goto done;
	}

	/* How many hardware descriptors do we have readily available. */
	if (eq->pidx == eq->cidx)
		available = eq->sidx - 1;
	else
		available = FUNC1(eq->cidx, eq->pidx, eq->sidx) - 1;
	dbdiff = FUNC1(eq->pidx, eq->dbidx, eq->sidx);

	while (remaining > 0) {

		m0 = r->items[cidx];
		FUNC4(m0);
		FUNC3(m0->m_nextpkt == NULL);

		if (available < SGE_MAX_WR_NDESC) {
			available += FUNC16(txq, 64);
			if (available < FUNC11(FUNC15(m0), EQ_ESIZE / 16))
				break;	/* out of descriptors */
		}

		next_cidx = cidx + 1;
		if (FUNC7(next_cidx == r->size))
			next_cidx = 0;

		wr = (void *)&eq->desc[eq->pidx];
		if (sc->flags & IS_VF) {
			total++;
			remaining--;
			FUNC0(ifp, m0);
			n = FUNC22(sc, txq, (void *)wr, m0,
			    available);
		} else if (remaining > 1 &&
		    FUNC19(m0, r->items[next_cidx], &txp, available) == 0) {

			/* pkts at cidx, next_cidx should both be in txp. */
			FUNC3(txp.npkt == 2);
			tail = r->items[next_cidx];
			FUNC3(tail->m_nextpkt == NULL);
			FUNC0(ifp, m0);
			FUNC0(ifp, tail);
			m0->m_nextpkt = tail;

			if (FUNC7(++next_cidx == r->size))
				next_cidx = 0;

			while (next_cidx != pidx) {
				if (FUNC8(r->items[next_cidx], &txp,
				    available) != 0)
					break;
				tail->m_nextpkt = r->items[next_cidx];
				tail = tail->m_nextpkt;
				FUNC0(ifp, tail);
				if (FUNC7(++next_cidx == r->size))
					next_cidx = 0;
			}

			n = FUNC24(txq, wr, m0, &txp, available);
			total += txp.npkt;
			remaining -= txp.npkt;
		} else if (FUNC14(m0) & MC_RAW_WR) {
			total++;
			remaining--;
			n = FUNC21(txq, (void *)wr, m0, available);
		} else {
			total++;
			remaining--;
			FUNC0(ifp, m0);
			n = FUNC23(txq, (void *)wr, m0, available);
		}
		FUNC3(n >= 1 && n <= available && n <= SGE_MAX_WR_NDESC);

		available -= n;
		dbdiff += n;
		FUNC2(eq->pidx, n, eq->sidx);

		if (FUNC20(wr)) {
			if (FUNC18(eq) < eq->sidx / 4 &&
			    FUNC9(&eq->equiq, 0, 1)) {
				wr->equiq_to_len16 |= FUNC12(F_FW_WR_EQUIQ |
				    F_FW_WR_EQUEQ);
				eq->equeqidx = eq->pidx;
			} else if (FUNC1(eq->pidx, eq->equeqidx, eq->sidx) >=
			    32) {
				wr->equiq_to_len16 |= FUNC12(F_FW_WR_EQUEQ);
				eq->equeqidx = eq->pidx;
			}
		}

		if (dbdiff >= 16 && remaining >= 4) {
			FUNC17(sc, eq, dbdiff);
			available += FUNC16(txq, 4 * dbdiff);
			dbdiff = 0;
		}

		cidx = next_cidx;
	}
	if (dbdiff != 0) {
		FUNC17(sc, eq, dbdiff);
		FUNC16(txq, 32);
	}
done:
	FUNC6(txq);

	return (total);
}