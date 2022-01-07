
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtnet_softc {int vtnet_flags; void* vtnet_features; int vtnet_dev; } ;
typedef int device_t ;


 int VIRTIO_NET_F_CSUM ;
 int VIRTIO_NET_F_GUEST_CSUM ;
 int VIRTIO_NET_F_MQ ;
 int VIRTIO_NET_F_MRG_RXBUF ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VTNET_FEATURES ;
 int VTNET_FLAG_LRO_NOMRG ;
 int VTNET_LRO_FEATURES ;
 int VTNET_TSO_FEATURES ;
 int device_printf (int ,char*) ;
 void* virtio_negotiate_features (int ,int) ;
 scalar_t__ virtio_with_feature (int ,int) ;
 int vtnet_csum_disable ;
 int vtnet_lro_disable ;
 int vtnet_mq_disable ;
 int vtnet_tso_disable ;
 scalar_t__ vtnet_tunable_int (struct vtnet_softc*,char*,int ) ;

__attribute__((used)) static void
vtnet_negotiate_features(struct vtnet_softc *sc)
{
 device_t dev;
 uint64_t mask, features;

 dev = sc->vtnet_dev;
 mask = 0;





 if (vtnet_tunable_int(sc, "csum_disable", vtnet_csum_disable)) {
  mask |= VIRTIO_NET_F_CSUM | VIRTIO_NET_F_GUEST_CSUM;
  mask |= VTNET_TSO_FEATURES | VTNET_LRO_FEATURES;
 }
 if (vtnet_tunable_int(sc, "tso_disable", vtnet_tso_disable))
  mask |= VTNET_TSO_FEATURES;
 if (vtnet_tunable_int(sc, "lro_disable", vtnet_lro_disable))
  mask |= VTNET_LRO_FEATURES;

 if (vtnet_tunable_int(sc, "mq_disable", vtnet_mq_disable))
  mask |= VIRTIO_NET_F_MQ;




 features = VTNET_FEATURES & ~mask;
 sc->vtnet_features = virtio_negotiate_features(dev, features);

 if (virtio_with_feature(dev, VTNET_LRO_FEATURES) &&
     virtio_with_feature(dev, VIRTIO_NET_F_MRG_RXBUF) == 0) {
  if (!virtio_with_feature(dev, VIRTIO_RING_F_INDIRECT_DESC)) {
   device_printf(dev,
       "LRO disabled due to both mergeable buffers and "
       "indirect descriptors not negotiated\n");

   features &= ~VTNET_LRO_FEATURES;
   sc->vtnet_features =
       virtio_negotiate_features(dev, features);
  } else
   sc->vtnet_flags |= VTNET_FLAG_LRO_NOMRG;
 }
}
