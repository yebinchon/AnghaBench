
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int vtballoon_dev; int vtballoon_deflate_vq; int vtballoon_inflate_vq; } ;


 int virtio_stop (int ) ;
 int virtqueue_disable_intr (int ) ;

__attribute__((used)) static void
vtballoon_stop(struct vtballoon_softc *sc)
{

 virtqueue_disable_intr(sc->vtballoon_inflate_vq);
 virtqueue_disable_intr(sc->vtballoon_deflate_vq);

 virtio_stop(sc->vtballoon_dev);
}
