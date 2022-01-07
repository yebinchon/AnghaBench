
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int size; unsigned int in_use; int stops; int sendq; } ;
struct sge_qset {int txq_stopped; } ;
struct mbuf {int dummy; } ;
typedef int adapter_t ;


 scalar_t__ __predict_false (int) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int mbufq_len (int *) ;
 int setbit (int *,unsigned int) ;
 scalar_t__ should_restart_tx (struct sge_txq*) ;
 scalar_t__ test_and_clear_bit (unsigned int,int *) ;
 struct sge_qset* txq_to_qset (struct sge_txq*,unsigned int) ;

__attribute__((used)) static __inline int
check_desc_avail(adapter_t *adap, struct sge_txq *q,
   struct mbuf *m, unsigned int ndesc,
   unsigned int qid)
{





 if (__predict_false(mbufq_len(&q->sendq))) {
addq_exit: (void )mbufq_enqueue(&q->sendq, m);
  return 1;
 }
 if (__predict_false(q->size - q->in_use < ndesc)) {

  struct sge_qset *qs = txq_to_qset(q, qid);

  setbit(&qs->txq_stopped, qid);
  if (should_restart_tx(q) &&
      test_and_clear_bit(qid, &qs->txq_stopped))
   return 2;

  q->stops++;
  goto addq_exit;
 }
 return 0;
}
