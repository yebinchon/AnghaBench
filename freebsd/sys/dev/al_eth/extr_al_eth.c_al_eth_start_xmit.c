
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct al_eth_ring {int enqueue_is_running; int br_mtx; int br; } ;


 int al_data_memory_barrier () ;
 int al_eth_xmit_mbuf (struct al_eth_ring*,struct mbuf*) ;
 struct mbuf* drbr_dequeue (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ napi ;

__attribute__((used)) static void
al_eth_start_xmit(void *arg, int pending)
{
 struct al_eth_ring *tx_ring = arg;
 struct mbuf *mbuf;

 if (napi != 0) {
  tx_ring->enqueue_is_running = 1;
  al_data_memory_barrier();
 }

 while (1) {
  mtx_lock(&tx_ring->br_mtx);
  mbuf = drbr_dequeue(((void*)0), tx_ring->br);
  mtx_unlock(&tx_ring->br_mtx);

  if (mbuf == ((void*)0))
   break;

  al_eth_xmit_mbuf(tx_ring, mbuf);
 }

 if (napi != 0) {
  tx_ring->enqueue_is_running = 0;
  al_data_memory_barrier();
  while (1) {
   mtx_lock(&tx_ring->br_mtx);
   mbuf = drbr_dequeue(((void*)0), tx_ring->br);
   mtx_unlock(&tx_ring->br_mtx);
   if (mbuf == ((void*)0))
    break;
   al_eth_xmit_mbuf(tx_ring, mbuf);
  }
 }
}
