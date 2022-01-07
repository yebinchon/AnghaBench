
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; int vtblk_dev; } ;
typedef int device_t ;


 int VIRTIO_BLK_F_BARRIER ;
 int VIRTIO_BLK_F_CONFIG_WCE ;
 int VIRTIO_BLK_F_RO ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VTBLK_FLAG_BARRIER ;
 int VTBLK_FLAG_INDIRECT ;
 int VTBLK_FLAG_READONLY ;
 int VTBLK_FLAG_WC_CONFIG ;
 scalar_t__ virtio_with_feature (int ,int ) ;
 int vtblk_negotiate_features (struct vtblk_softc*) ;

__attribute__((used)) static void
vtblk_setup_features(struct vtblk_softc *sc)
{
 device_t dev;

 dev = sc->vtblk_dev;

 vtblk_negotiate_features(sc);

 if (virtio_with_feature(dev, VIRTIO_RING_F_INDIRECT_DESC))
  sc->vtblk_flags |= VTBLK_FLAG_INDIRECT;
 if (virtio_with_feature(dev, VIRTIO_BLK_F_RO))
  sc->vtblk_flags |= VTBLK_FLAG_READONLY;
 if (virtio_with_feature(dev, VIRTIO_BLK_F_BARRIER))
  sc->vtblk_flags |= VTBLK_FLAG_BARRIER;
 if (virtio_with_feature(dev, VIRTIO_BLK_F_CONFIG_WCE))
  sc->vtblk_flags |= VTBLK_FLAG_WC_CONFIG;
}
