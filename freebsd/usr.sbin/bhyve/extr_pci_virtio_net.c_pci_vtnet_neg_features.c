
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct virtio_net_rxhdr {int dummy; } ;
struct pci_vtnet_softc {int vsc_features; int rx_vhdrlen; int vsc_be; scalar_t__ rx_merge; } ;


 int VIRTIO_NET_F_MRG_RXBUF ;
 int netbe_set_cap (int ,int,int) ;

__attribute__((used)) static void
pci_vtnet_neg_features(void *vsc, uint64_t negotiated_features)
{
 struct pci_vtnet_softc *sc = vsc;

 sc->vsc_features = negotiated_features;

 if (!(negotiated_features & VIRTIO_NET_F_MRG_RXBUF)) {
  sc->rx_merge = 0;


  sc->rx_vhdrlen = sizeof(struct virtio_net_rxhdr) - 2;
 }


 netbe_set_cap(sc->vsc_be, negotiated_features, sc->rx_vhdrlen);
}
