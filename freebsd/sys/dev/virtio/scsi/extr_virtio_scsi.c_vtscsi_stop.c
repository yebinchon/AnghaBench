
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_dev; } ;


 int virtio_stop (int ) ;
 int vtscsi_disable_vqs_intr (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_stop(struct vtscsi_softc *sc)
{

 vtscsi_disable_vqs_intr(sc);
 virtio_stop(sc->vtscsi_dev);
}
