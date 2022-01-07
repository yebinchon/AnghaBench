
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {struct virtqueue* vtntx_vq; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {scalar_t__ vtnet_tx_intr_thresh; } ;
struct virtqueue {int dummy; } ;


 scalar_t__ virtqueue_nfree (struct virtqueue*) ;

__attribute__((used)) static int
vtnet_txq_below_threshold(struct vtnet_txq *txq)
{
 struct vtnet_softc *sc;
 struct virtqueue *vq;

 sc = txq->vtntx_sc;
 vq = txq->vtntx_vq;

 return (virtqueue_nfree(vq) <= sc->vtnet_tx_intr_thresh);
}
