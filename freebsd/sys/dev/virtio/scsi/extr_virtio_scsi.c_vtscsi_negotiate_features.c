
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtscsi_softc {int vtscsi_features; int vtscsi_dev; } ;
typedef int device_t ;


 int VTSCSI_FEATURES ;
 int virtio_negotiate_features (int ,int ) ;

__attribute__((used)) static void
vtscsi_negotiate_features(struct vtscsi_softc *sc)
{
 device_t dev;
 uint64_t features;

 dev = sc->vtscsi_dev;
 features = virtio_negotiate_features(dev, VTSCSI_FEATURES);
 sc->vtscsi_features = features;
}
