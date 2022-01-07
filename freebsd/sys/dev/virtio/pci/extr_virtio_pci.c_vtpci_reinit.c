
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtpci_softc {int vtpci_nvqs; int vtpci_flags; } ;
typedef int device_t ;


 int VIRTIO_CONFIG_STATUS_ACK ;
 int VIRTIO_CONFIG_STATUS_DRIVER ;
 scalar_t__ VIRTIO_CONFIG_STATUS_RESET ;
 int VTPCI_FLAG_MSIX ;
 struct vtpci_softc* device_get_softc (int ) ;
 scalar_t__ vtpci_get_status (int ) ;
 int vtpci_negotiate_features (int ,int ) ;
 int vtpci_reinit_virtqueue (struct vtpci_softc*,int) ;
 int vtpci_set_host_msix_vectors (struct vtpci_softc*) ;
 int vtpci_set_status (int ,int ) ;
 int vtpci_stop (int ) ;

__attribute__((used)) static int
vtpci_reinit(device_t dev, uint64_t features)
{
 struct vtpci_softc *sc;
 int idx, error;

 sc = device_get_softc(dev);
 if (vtpci_get_status(dev) != VIRTIO_CONFIG_STATUS_RESET)
  vtpci_stop(dev);





 vtpci_set_status(dev, VIRTIO_CONFIG_STATUS_ACK);
 vtpci_set_status(dev, VIRTIO_CONFIG_STATUS_DRIVER);

 vtpci_negotiate_features(dev, features);

 for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
  error = vtpci_reinit_virtqueue(sc, idx);
  if (error)
   return (error);
 }

 if (sc->vtpci_flags & VTPCI_FLAG_MSIX) {
  error = vtpci_set_host_msix_vectors(sc);
  if (error)
   return (error);
 }

 return (0);
}
