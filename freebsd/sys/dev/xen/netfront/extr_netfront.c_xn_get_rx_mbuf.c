
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
typedef int RING_IDX ;


 int xn_rxidx (int ) ;

__attribute__((used)) static inline struct mbuf *
xn_get_rx_mbuf(struct netfront_rxq *rxq, RING_IDX ri)
{
 int i;
 struct mbuf *m;

 i = xn_rxidx(ri);
 m = rxq->mbufs[i];
 rxq->mbufs[i] = ((void*)0);
 return (m);
}
