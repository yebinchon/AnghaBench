
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {scalar_t__ hn_txdone_cnt; int hn_has_txeof; } ;
struct hn_rx_ring {int hn_lro; } ;


 int hn_txeof (struct hn_tx_ring*) ;
 int tcp_lro_flush_all (int *) ;

__attribute__((used)) static void
hn_chan_rollup(struct hn_rx_ring *rxr, struct hn_tx_ring *txr)
{
 if (txr == ((void*)0) || !txr->hn_has_txeof)
  return;

 txr->hn_txdone_cnt = 0;
 hn_txeof(txr);
}
