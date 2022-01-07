
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtballoon_softc {int vtballoon_features; int vtballoon_dev; } ;
typedef int device_t ;


 int VTBALLOON_FEATURES ;
 int virtio_negotiate_features (int ,int ) ;

__attribute__((used)) static void
vtballoon_negotiate_features(struct vtballoon_softc *sc)
{
 device_t dev;
 uint64_t features;

 dev = sc->vtballoon_dev;
 features = virtio_negotiate_features(dev, VTBALLOON_FEATURES);
 sc->vtballoon_features = features;
}
