
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int * vtmmio_child_dev; int * dev; } ;
typedef int * device_t ;


 scalar_t__ DS_NOTPRESENT ;
 int VIRTIO_ATTACH_COMPLETED (int *) ;
 int VIRTIO_CONFIG_STATUS_ACK ;
 int VIRTIO_CONFIG_STATUS_DRIVER ;
 int VIRTIO_CONFIG_STATUS_DRIVER_OK ;
 int VIRTIO_CONFIG_STATUS_FAILED ;
 scalar_t__ device_attach (int *) ;
 scalar_t__ device_get_state (int *) ;
 scalar_t__ device_probe (int *) ;
 int vtmmio_release_child_resources (struct vtmmio_softc*) ;
 int vtmmio_reset (struct vtmmio_softc*) ;
 int vtmmio_set_status (int *,int ) ;

__attribute__((used)) static void
vtmmio_probe_and_attach_child(struct vtmmio_softc *sc)
{
 device_t dev, child;

 dev = sc->dev;
 child = sc->vtmmio_child_dev;

 if (child == ((void*)0))
  return;

 if (device_get_state(child) != DS_NOTPRESENT) {
  return;
 }

 if (device_probe(child) != 0) {
  return;
 }

 vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_DRIVER);
 if (device_attach(child) != 0) {
  vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_FAILED);
  vtmmio_reset(sc);
  vtmmio_release_child_resources(sc);

  vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_ACK);
 } else {
  vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_DRIVER_OK);
  VIRTIO_ATTACH_COMPLETED(child);
 }
}
