
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtnet_softc {int vtnet_features; struct ifnet* vtnet_ifp; int vtnet_dev; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;
typedef int device_t ;


 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_VLAN_HWFILTER ;
 int VIRTIO_NET_F_CTRL_VLAN ;
 int VIRTIO_NET_F_GUEST_CSUM ;
 int VTNET_LRO_FEATURES ;
 int device_printf (int ,char*,int) ;
 int virtio_reinit (int ,int ) ;

__attribute__((used)) static int
vtnet_virtio_reinit(struct vtnet_softc *sc)
{
 device_t dev;
 struct ifnet *ifp;
 uint64_t features;
 int mask, error;

 dev = sc->vtnet_dev;
 ifp = sc->vtnet_ifp;
 features = sc->vtnet_features;

 mask = 0;
 if (ifp->if_capabilities & mask) {





  if ((ifp->if_capenable & mask) != mask)
   features &= ~VIRTIO_NET_F_GUEST_CSUM;
 }

 if (ifp->if_capabilities & IFCAP_LRO) {
  if ((ifp->if_capenable & IFCAP_LRO) == 0)
   features &= ~VTNET_LRO_FEATURES;
 }

 if (ifp->if_capabilities & IFCAP_VLAN_HWFILTER) {
  if ((ifp->if_capenable & IFCAP_VLAN_HWFILTER) == 0)
   features &= ~VIRTIO_NET_F_CTRL_VLAN;
 }

 error = virtio_reinit(dev, features);
 if (error)
  device_printf(dev, "virtio reinit error %d\n", error);

 return (error);
}
