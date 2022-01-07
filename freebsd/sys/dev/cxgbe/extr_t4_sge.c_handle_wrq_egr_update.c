
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_wrq {int wrq_tx_task; } ;
struct sge_eq {size_t tx_chan; int equiq; } ;
struct adapter {int * tq; } ;


 int atomic_readandclear_int (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
handle_wrq_egr_update(struct adapter *sc, struct sge_eq *eq)
{
 struct sge_wrq *wrq = (void *)eq;

 atomic_readandclear_int(&eq->equiq);
 taskqueue_enqueue(sc->tq[eq->tx_chan], &wrq->wrq_tx_task);
}
