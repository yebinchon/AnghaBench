
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct wrqe {int wr_len; int * wr; struct sge_wrq* wrq; } ;
struct sge_eq {size_t pidx; size_t dbidx; size_t cidx; int sidx; int equiq; struct fw_eth_tx_pkt_wr* desc; } ;
struct sge_wrq {scalar_t__ nwr_pending; int ndesc_needed; int wr_list; int tx_wrs_copied; int incomplete_wrs; struct sge_eq eq; } ;
struct fw_eth_tx_pkt_wr {int equiq_to_len16; } ;
struct adapter {int dummy; } ;


 int EQ_ESIZE ;
 int EQ_LOCK_ASSERT_OWNED (struct sge_eq*) ;
 int F_FW_WR_EQUEQ ;
 int F_FW_WR_EQUIQ ;
 int IDXDIFF (size_t,size_t,int) ;
 int MPASS (int) ;
 struct wrqe* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ __predict_true (int) ;
 scalar_t__ atomic_cmpset_int (int *,int ,int) ;
 int bcopy (int *,struct fw_eth_tx_pkt_wr*,int) ;
 int free_wrqe (struct wrqe*) ;
 int howmany (int,int) ;
 int htobe32 (int) ;
 int link ;
 size_t read_hw_cidx (struct sge_eq*) ;
 int ring_eq_db (struct adapter*,struct sge_eq*,int) ;

__attribute__((used)) static void
drain_wrq_wr_list(struct adapter *sc, struct sge_wrq *wrq)
{
 struct sge_eq *eq = &wrq->eq;
 u_int available, dbdiff;
 u_int n;
 struct wrqe *wr;
 struct fw_eth_tx_pkt_wr *dst;

 EQ_LOCK_ASSERT_OWNED(eq);
 MPASS(TAILQ_EMPTY(&wrq->incomplete_wrs));
 wr = STAILQ_FIRST(&wrq->wr_list);
 MPASS(wr != ((void*)0));
 MPASS(eq->pidx == eq->dbidx);
 dbdiff = 0;

 do {
  eq->cidx = read_hw_cidx(eq);
  if (eq->pidx == eq->cidx)
   available = eq->sidx - 1;
  else
   available = IDXDIFF(eq->cidx, eq->pidx, eq->sidx) - 1;

  MPASS(wr->wrq == wrq);
  n = howmany(wr->wr_len, EQ_ESIZE);
  if (available < n)
   break;

  dst = (void *)&eq->desc[eq->pidx];
  if (__predict_true(eq->sidx - eq->pidx > n)) {

   bcopy(&wr->wr[0], dst, wr->wr_len);
   eq->pidx += n;
  } else {
   int first_portion = (eq->sidx - eq->pidx) * EQ_ESIZE;

   bcopy(&wr->wr[0], dst, first_portion);
   if (wr->wr_len > first_portion) {
    bcopy(&wr->wr[first_portion], &eq->desc[0],
        wr->wr_len - first_portion);
   }
   eq->pidx = n - (eq->sidx - eq->pidx);
  }
  wrq->tx_wrs_copied++;

  if (available < eq->sidx / 4 &&
      atomic_cmpset_int(&eq->equiq, 0, 1)) {





   dst->equiq_to_len16 |= htobe32(F_FW_WR_EQUIQ |
       F_FW_WR_EQUEQ);
  }

  dbdiff += n;
  if (dbdiff >= 16) {
   ring_eq_db(sc, eq, dbdiff);
   dbdiff = 0;
  }

  STAILQ_REMOVE_HEAD(&wrq->wr_list, link);
  free_wrqe(wr);
  MPASS(wrq->nwr_pending > 0);
  wrq->nwr_pending--;
  MPASS(wrq->ndesc_needed >= n);
  wrq->ndesc_needed -= n;
 } while ((wr = STAILQ_FIRST(&wrq->wr_list)) != ((void*)0));

 if (dbdiff)
  ring_eq_db(sc, eq, dbdiff);
}
