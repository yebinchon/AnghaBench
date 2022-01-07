
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_features; int vtscsi_dev; } ;
typedef int device_t ;


 int VTSCSI_TRACE ;
 int virtio_reinit (int ,int ) ;
 int virtio_reinit_complete (int ) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int) ;
 int vtscsi_enable_vqs_intr (struct vtscsi_softc*) ;
 int vtscsi_reinit_event_vq (struct vtscsi_softc*) ;
 int vtscsi_write_device_config (struct vtscsi_softc*) ;

__attribute__((used)) static int
vtscsi_reinit(struct vtscsi_softc *sc)
{
 device_t dev;
 int error;

 dev = sc->vtscsi_dev;

 error = virtio_reinit(dev, sc->vtscsi_features);
 if (error == 0) {
  vtscsi_write_device_config(sc);
  vtscsi_reinit_event_vq(sc);
  virtio_reinit_complete(dev);

  vtscsi_enable_vqs_intr(sc);
 }

 vtscsi_dprintf(sc, VTSCSI_TRACE, "error=%d\n", error);

 return (error);
}
