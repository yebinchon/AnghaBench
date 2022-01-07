
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_dev; int vtblk_vq; } ;


 int virtio_stop (int ) ;
 int virtqueue_disable_intr (int ) ;

__attribute__((used)) static void
vtblk_stop(struct vtblk_softc *sc)
{

 virtqueue_disable_intr(sc->vtblk_vq);
 virtio_stop(sc->vtblk_dev);
}
