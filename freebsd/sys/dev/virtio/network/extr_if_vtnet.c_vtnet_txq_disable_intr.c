
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_vq; } ;


 int virtqueue_disable_intr (int ) ;

__attribute__((used)) static void
vtnet_txq_disable_intr(struct vtnet_txq *txq)
{

 virtqueue_disable_intr(txq->vtntx_vq);
}
