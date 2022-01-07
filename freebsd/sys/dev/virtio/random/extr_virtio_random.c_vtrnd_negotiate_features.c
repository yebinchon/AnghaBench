
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtrnd_softc {int vtrnd_features; } ;
typedef int device_t ;


 int VTRND_FEATURES ;
 struct vtrnd_softc* device_get_softc (int ) ;
 int virtio_negotiate_features (int ,int ) ;

__attribute__((used)) static void
vtrnd_negotiate_features(device_t dev)
{
 struct vtrnd_softc *sc;

 sc = device_get_softc(dev);
 sc->vtrnd_features = virtio_negotiate_features(dev, VTRND_FEATURES);
}
