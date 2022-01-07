
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq {int vtnrx_vq; } ;


 int virtqueue_enable_intr (int ) ;

__attribute__((used)) static int
vtnet_rxq_enable_intr(struct vtnet_rxq *rxq)
{

 return (virtqueue_enable_intr(rxq->vtnrx_vq));
}
