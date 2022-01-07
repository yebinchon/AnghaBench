
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtmmio_softc {int vtmmio_nvqs; } ;
typedef int device_t ;


 int PAGE_SHIFT ;
 int VIRTIO_CONFIG_STATUS_ACK ;
 int VIRTIO_CONFIG_STATUS_DRIVER ;
 scalar_t__ VIRTIO_CONFIG_STATUS_RESET ;
 int VIRTIO_MMIO_GUEST_PAGE_SIZE ;
 struct vtmmio_softc* device_get_softc (int ) ;
 scalar_t__ vtmmio_get_status (int ) ;
 int vtmmio_negotiate_features (int ,int ) ;
 int vtmmio_reinit_virtqueue (struct vtmmio_softc*,int) ;
 int vtmmio_set_status (int ,int ) ;
 int vtmmio_stop (int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int) ;

__attribute__((used)) static int
vtmmio_reinit(device_t dev, uint64_t features)
{
 struct vtmmio_softc *sc;
 int idx, error;

 sc = device_get_softc(dev);

 if (vtmmio_get_status(dev) != VIRTIO_CONFIG_STATUS_RESET)
  vtmmio_stop(dev);





 vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_ACK);
 vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_DRIVER);

 vtmmio_negotiate_features(dev, features);

 vtmmio_write_config_4(sc, VIRTIO_MMIO_GUEST_PAGE_SIZE,
     (1 << PAGE_SHIFT));

 for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
  error = vtmmio_reinit_virtqueue(sc, idx);
  if (error)
   return (error);
 }

 return (0);
}
