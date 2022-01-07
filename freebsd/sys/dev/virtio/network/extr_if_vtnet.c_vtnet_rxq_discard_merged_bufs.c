
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq {int vtnrx_vq; } ;
struct mbuf {int dummy; } ;


 struct mbuf* virtqueue_dequeue (int ,int *) ;
 int vtnet_rxq_discard_buf (struct vtnet_rxq*,struct mbuf*) ;

__attribute__((used)) static void
vtnet_rxq_discard_merged_bufs(struct vtnet_rxq *rxq, int nbufs)
{
 struct mbuf *m;

 while (--nbufs > 0) {
  m = virtqueue_dequeue(rxq->vtnrx_vq, ((void*)0));
  if (m == ((void*)0))
   break;
  vtnet_rxq_discard_buf(rxq, m);
 }
}
