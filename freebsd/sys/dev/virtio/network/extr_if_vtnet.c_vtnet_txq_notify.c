
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_watchdog; struct virtqueue* vtntx_vq; } ;
struct virtqueue {int dummy; } ;


 int VTNET_TX_TIMEOUT ;
 int virtqueue_disable_intr (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;
 scalar_t__ vtnet_txq_below_threshold (struct vtnet_txq*) ;
 scalar_t__ vtnet_txq_enable_intr (struct vtnet_txq*) ;
 scalar_t__ vtnet_txq_eof (struct vtnet_txq*) ;

__attribute__((used)) static int
vtnet_txq_notify(struct vtnet_txq *txq)
{
 struct virtqueue *vq;

 vq = txq->vtntx_vq;

 txq->vtntx_watchdog = VTNET_TX_TIMEOUT;
 virtqueue_notify(vq);

 if (vtnet_txq_enable_intr(txq) == 0)
  return (0);






 if (vtnet_txq_eof(txq) != 0 && vtnet_txq_below_threshold(txq) == 0) {
  virtqueue_disable_intr(vq);
  return (1);
 }

 return (0);
}
