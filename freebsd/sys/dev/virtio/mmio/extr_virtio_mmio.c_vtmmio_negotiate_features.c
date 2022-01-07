
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtmmio_softc {int vtmmio_features; } ;
typedef int device_t ;


 int VIRTIO_MMIO_GUEST_FEATURES ;
 int VIRTIO_MMIO_HOST_FEATURES ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int virtqueue_filter_features (int) ;
 int vtmmio_describe_features (struct vtmmio_softc*,char*,int) ;
 int vtmmio_read_config_4 (struct vtmmio_softc*,int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int) ;

__attribute__((used)) static uint64_t
vtmmio_negotiate_features(device_t dev, uint64_t child_features)
{
 struct vtmmio_softc *sc;
 uint64_t host_features, features;

 sc = device_get_softc(dev);

 host_features = vtmmio_read_config_4(sc, VIRTIO_MMIO_HOST_FEATURES);
 vtmmio_describe_features(sc, "host", host_features);





 features = host_features & child_features;
 features = virtqueue_filter_features(features);
 sc->vtmmio_features = features;

 vtmmio_describe_features(sc, "negotiated", features);
 vtmmio_write_config_4(sc, VIRTIO_MMIO_GUEST_FEATURES, features);

 return (features);
}
