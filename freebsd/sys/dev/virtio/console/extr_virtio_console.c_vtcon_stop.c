
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_dev; } ;


 int virtio_stop (int ) ;
 int vtcon_disable_interrupts (struct vtcon_softc*) ;

__attribute__((used)) static void
vtcon_stop(struct vtcon_softc *sc)
{

 vtcon_disable_interrupts(sc);
 virtio_stop(sc->vtcon_dev);
}
