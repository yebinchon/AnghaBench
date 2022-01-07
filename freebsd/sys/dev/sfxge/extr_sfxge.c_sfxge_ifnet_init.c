
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sfxge_softc {struct ifnet* ifnet; int dev; int enp; } ;
struct ifnet {int if_flags; int if_hwassist; int if_get_counter; int if_qflush; int if_transmit; int if_capenable; int if_capabilities; int if_hw_tsomaxsegsize; int if_hw_tsomaxsegcount; int if_hw_tsomax; int if_ioctl; struct sfxge_softc* if_softc; int if_init; } ;
struct TYPE_3__ {int enc_mac_addr; scalar_t__ enc_hw_tx_insert_vlan_enabled; } ;
typedef TYPE_1__ efx_nic_cfg_t ;
typedef int device_t ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int DBGPRINT (int ,char*) ;
 int IFCAP_LRO ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int PAGE_SIZE ;
 int SFXGE_CAP ;
 int SFXGE_CAP_ENABLE ;
 int SFXGE_TSO_MAX_SIZE ;
 int SFXGE_TX_MAPPING_MAX_SEG ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 TYPE_1__* efx_nic_cfg_get (int ) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int sfxge_get_counter ;
 int sfxge_if_init ;
 int sfxge_if_ioctl ;
 int sfxge_if_qflush ;
 int sfxge_if_transmit ;
 int sfxge_port_ifmedia_init (struct sfxge_softc*) ;

__attribute__((used)) static int
sfxge_ifnet_init(struct ifnet *ifp, struct sfxge_softc *sc)
{
 const efx_nic_cfg_t *encp = efx_nic_cfg_get(sc->enp);
 device_t dev;
 int rc;

 dev = sc->dev;
 sc->ifnet = ifp;

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_init = sfxge_if_init;
 ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = sfxge_if_ioctl;

 ifp->if_capabilities = SFXGE_CAP;
 ifp->if_capenable = SFXGE_CAP_ENABLE;
 ifp->if_hw_tsomax = SFXGE_TSO_MAX_SIZE;
 ifp->if_hw_tsomaxsegcount = SFXGE_TX_MAPPING_MAX_SEG;
 ifp->if_hw_tsomaxsegsize = PAGE_SIZE;






 if (encp->enc_hw_tx_insert_vlan_enabled) {
  ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING;
  ifp->if_capenable |= IFCAP_VLAN_HWTAGGING;
 }
 ifp->if_hwassist = CSUM_TCP | CSUM_UDP | CSUM_IP | CSUM_TSO |
      CSUM_TCP_IPV6 | CSUM_UDP_IPV6;

 ether_ifattach(ifp, encp->enc_mac_addr);

 ifp->if_transmit = sfxge_if_transmit;
 ifp->if_qflush = sfxge_if_qflush;

 ifp->if_get_counter = sfxge_get_counter;

 DBGPRINT(sc->dev, "ifmedia_init");
 if ((rc = sfxge_port_ifmedia_init(sc)) != 0)
  goto fail;

 return (0);

fail:
 ether_ifdetach(sc->ifnet);
 return (rc);
}
