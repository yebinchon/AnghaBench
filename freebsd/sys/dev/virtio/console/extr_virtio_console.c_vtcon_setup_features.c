
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_flags; int vtcon_dev; } ;
typedef int device_t ;


 int VIRTIO_CONSOLE_F_MULTIPORT ;
 int VIRTIO_CONSOLE_F_SIZE ;
 int VTCON_FLAG_MULTIPORT ;
 int VTCON_FLAG_SIZE ;
 scalar_t__ virtio_with_feature (int ,int ) ;
 int vtcon_negotiate_features (struct vtcon_softc*) ;

__attribute__((used)) static void
vtcon_setup_features(struct vtcon_softc *sc)
{
 device_t dev;

 dev = sc->vtcon_dev;

 vtcon_negotiate_features(sc);

 if (virtio_with_feature(dev, VIRTIO_CONSOLE_F_SIZE))
  sc->vtcon_flags |= VTCON_FLAG_SIZE;
 if (virtio_with_feature(dev, VIRTIO_CONSOLE_F_MULTIPORT))
  sc->vtcon_flags |= VTCON_FLAG_MULTIPORT;
}
