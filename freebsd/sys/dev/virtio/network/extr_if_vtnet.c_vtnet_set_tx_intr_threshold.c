
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtnet_softc {int vtnet_flags; int vtnet_tx_nsegs; int vtnet_tx_intr_thresh; TYPE_1__* vtnet_txqs; } ;
struct TYPE_2__ {int vtntx_vq; } ;


 int VTNET_FLAG_INDIRECT ;
 int virtqueue_size (int ) ;

__attribute__((used)) static void
vtnet_set_tx_intr_threshold(struct vtnet_softc *sc)
{
 int size, thresh;

 size = virtqueue_size(sc->vtnet_txqs[0].vtntx_vq);
 thresh = size / 4;





 if ((sc->vtnet_flags & VTNET_FLAG_INDIRECT) == 0 &&
     thresh < sc->vtnet_tx_nsegs)
  thresh = sc->vtnet_tx_nsegs;

 sc->vtnet_tx_intr_thresh = thresh;
}
