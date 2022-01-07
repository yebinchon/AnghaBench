
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pio_txqueue {struct bwn_pio_txpkt* tq_pkts; } ;
struct bwn_pio_txpkt {int * tp_m; } ;


 unsigned int N (struct bwn_pio_txpkt*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bwn_pio_cancel_tx_packets(struct bwn_pio_txqueue *tq)
{
 struct bwn_pio_txpkt *tp;
 unsigned int i;

 for (i = 0; i < N(tq->tq_pkts); i++) {
  tp = &(tq->tq_pkts[i]);
  if (tp->tp_m) {
   m_freem(tp->tp_m);
   tp->tp_m = ((void*)0);
  }
 }
}
