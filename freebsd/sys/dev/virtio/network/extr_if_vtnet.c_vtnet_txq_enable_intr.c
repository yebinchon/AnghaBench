
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {struct virtqueue* vtntx_vq; } ;
struct virtqueue {int dummy; } ;


 int VQ_POSTPONE_LONG ;
 int virtqueue_postpone_intr (struct virtqueue*,int ) ;
 scalar_t__ vtnet_txq_below_threshold (struct vtnet_txq*) ;

__attribute__((used)) static int
vtnet_txq_enable_intr(struct vtnet_txq *txq)
{
 struct virtqueue *vq;

 vq = txq->vtntx_vq;

 if (vtnet_txq_below_threshold(txq) != 0)
  return (virtqueue_postpone_intr(vq, VQ_POSTPONE_LONG));





 return (0);
}
