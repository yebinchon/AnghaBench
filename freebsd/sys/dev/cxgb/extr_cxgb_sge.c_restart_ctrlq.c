
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {size_t in_use; size_t size; size_t pidx; int gen; int cntxt_id; int stops; int sendq; int * desc; } ;
struct sge_qset {int txq_stopped; TYPE_1__* port; struct sge_txq* txq; } ;
struct mbuf {int m_len; int m_data; } ;
typedef int adapter_t ;
struct TYPE_2__ {int * adapter; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 size_t TXQ_CTRL ;
 int TXQ_LOCK (struct sge_qset*) ;
 int TXQ_UNLOCK (struct sge_qset*) ;
 int V_EGRCNTX (int ) ;
 int m_free (struct mbuf*) ;
 struct mbuf* mbufq_dequeue (int *) ;
 scalar_t__ mbufq_len (int *) ;
 int reclaim_completed_tx_imm (struct sge_txq*) ;
 int setbit (int *,size_t) ;
 scalar_t__ should_restart_tx (struct sge_txq*) ;
 int t3_write_reg (int *,int ,int) ;
 scalar_t__ test_and_clear_bit (size_t,int *) ;
 int write_imm (int *,int ,int ,int) ;

__attribute__((used)) static void
restart_ctrlq(void *data, int npending)
{
 struct mbuf *m;
 struct sge_qset *qs = (struct sge_qset *)data;
 struct sge_txq *q = &qs->txq[TXQ_CTRL];
 adapter_t *adap = qs->port->adapter;

 TXQ_LOCK(qs);
again: reclaim_completed_tx_imm(q);

 while (q->in_use < q->size &&
        (m = mbufq_dequeue(&q->sendq)) != ((void*)0)) {

  write_imm(&q->desc[q->pidx], m->m_data, m->m_len, q->gen);
  m_free(m);

  if (++q->pidx >= q->size) {
   q->pidx = 0;
   q->gen ^= 1;
  }
  q->in_use++;
 }
 if (mbufq_len(&q->sendq)) {
  setbit(&qs->txq_stopped, TXQ_CTRL);

  if (should_restart_tx(q) &&
      test_and_clear_bit(TXQ_CTRL, &qs->txq_stopped))
   goto again;
  q->stops++;
 }
 TXQ_UNLOCK(qs);
 t3_write_reg(adap, A_SG_KDOORBELL,
       F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
}
