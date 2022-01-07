
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtblk_softc {int vtblk_features; int vtblk_dev; } ;
typedef int device_t ;


 int VTBLK_FEATURES ;
 int virtio_negotiate_features (int ,int ) ;

__attribute__((used)) static void
vtblk_negotiate_features(struct vtblk_softc *sc)
{
 device_t dev;
 uint64_t features;

 dev = sc->vtblk_dev;
 features = VTBLK_FEATURES;

 sc->vtblk_features = virtio_negotiate_features(dev, features);
}
