
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_dump_queue; int vtblk_vq; } ;


 int virtqueue_empty (int ) ;
 int vtblk_queue_completed (struct vtblk_softc*,int *) ;

__attribute__((used)) static void
vtblk_dump_quiesce(struct vtblk_softc *sc)
{






 while (!virtqueue_empty(sc->vtblk_vq))
  vtblk_queue_completed(sc, &sc->vtblk_dump_queue);
}
