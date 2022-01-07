
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {int dummy; } ;


 int XN_RX_LOCK (struct netfront_rxq*) ;
 int XN_RX_UNLOCK (struct netfront_rxq*) ;
 int xn_alloc_rx_buffers (struct netfront_rxq*) ;

__attribute__((used)) static void xn_alloc_rx_buffers_callout(void *arg)
{
 struct netfront_rxq *rxq;

 rxq = (struct netfront_rxq *)arg;
 XN_RX_LOCK(rxq);
 xn_alloc_rx_buffers(rxq);
 XN_RX_UNLOCK(rxq);
}
