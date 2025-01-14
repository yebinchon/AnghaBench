
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct nm_desc {scalar_t__ first_tx_ring; scalar_t__ last_tx_ring; scalar_t__ first_rx_ring; scalar_t__ last_rx_ring; int nifp; } ;


 int NETMAP_RXRING (int ,scalar_t__) ;
 int NETMAP_TXRING (int ,scalar_t__) ;
 scalar_t__ nm_ring_space (int ) ;

int
pkt_queued(struct nm_desc *d, int tx)
{
 u_int i, tot = 0;

 if (tx) {
  for (i = d->first_tx_ring; i <= d->last_tx_ring; i++) {
   tot += nm_ring_space(NETMAP_TXRING(d->nifp, i));
  }
 } else {
  for (i = d->first_rx_ring; i <= d->last_rx_ring; i++) {
   tot += nm_ring_space(NETMAP_RXRING(d->nifp, i));
  }
 }
 return tot;
}
