
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtcon_softc {int vtcon_features; int vtcon_dev; } ;
typedef int device_t ;


 int VTCON_FEATURES ;
 int virtio_negotiate_features (int ,int ) ;

__attribute__((used)) static void
vtcon_negotiate_features(struct vtcon_softc *sc)
{
 device_t dev;
 uint64_t features;

 dev = sc->vtcon_dev;
 features = VTCON_FEATURES;

 sc->vtcon_features = virtio_negotiate_features(dev, features);
}
