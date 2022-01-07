
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtpci_softc {int vtpci_features; } ;
typedef int device_t ;


 int VIRTIO_PCI_GUEST_FEATURES ;
 int VIRTIO_PCI_HOST_FEATURES ;
 struct vtpci_softc* device_get_softc (int ) ;
 int virtqueue_filter_features (int) ;
 int vtpci_describe_features (struct vtpci_softc*,char*,int) ;
 int vtpci_read_config_4 (struct vtpci_softc*,int ) ;
 int vtpci_write_config_4 (struct vtpci_softc*,int ,int) ;

__attribute__((used)) static uint64_t
vtpci_negotiate_features(device_t dev, uint64_t child_features)
{
 struct vtpci_softc *sc;
 uint64_t host_features, features;

 sc = device_get_softc(dev);

 host_features = vtpci_read_config_4(sc, VIRTIO_PCI_HOST_FEATURES);
 vtpci_describe_features(sc, "host", host_features);





 features = host_features & child_features;
 features = virtqueue_filter_features(features);
 sc->vtpci_features = features;

 vtpci_describe_features(sc, "negotiated", features);
 vtpci_write_config_4(sc, VIRTIO_PCI_GUEST_FEATURES, features);

 return (features);
}
