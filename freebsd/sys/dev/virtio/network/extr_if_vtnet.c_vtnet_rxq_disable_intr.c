
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq {int vtnrx_vq; } ;


 int virtqueue_disable_intr (int ) ;

__attribute__((used)) static void
vtnet_rxq_disable_intr(struct vtnet_rxq *rxq)
{

 virtqueue_disable_intr(rxq->vtnrx_vq);
}
