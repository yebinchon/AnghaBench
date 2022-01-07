
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int mac; struct ifnet* xn_ifp; int sc_media; int sc_lock; int xbdev; } ;
struct ifnet {int if_flags; int if_capenable; int if_capabilities; int if_hw_tsomaxsegsize; int if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int if_hwassist; int if_init; int if_qflush; int if_transmit; int if_ioctl; struct netfront_info* if_softc; } ;
typedef int device_t ;


 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_LRO ;
 int IFCAP_TSO4 ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_ETHER ;
 int IFM_MANUAL ;
 int IFT_ETHER ;
 int KASSERT (int,char*) ;
 int MAX_TX_REQ_FRAGS ;
 int MTX_DEF ;
 int PAGE_SIZE ;
 int XN_CSUM_FEATURES ;
 struct netfront_info* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,char*,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mtx_init (int *,char*,char*,int ) ;
 int netfront_carrier_off (struct netfront_info*) ;
 int xen_net_read_mac (int ,int ) ;
 int xn_ifinit ;
 int xn_ifmedia_sts ;
 int xn_ifmedia_upd ;
 int xn_ioctl ;
 int xn_qflush ;
 int xn_txq_mq_start ;

int
create_netdev(device_t dev)
{
 struct netfront_info *np;
 int err;
 struct ifnet *ifp;

 np = device_get_softc(dev);

 np->xbdev = dev;

 mtx_init(&np->sc_lock, "xnsc", "netfront softc lock", MTX_DEF);

 ifmedia_init(&np->sc_media, 0, xn_ifmedia_upd, xn_ifmedia_sts);
 ifmedia_add(&np->sc_media, IFM_ETHER|IFM_MANUAL, 0, ((void*)0));
 ifmedia_set(&np->sc_media, IFM_ETHER|IFM_MANUAL);

 err = xen_net_read_mac(dev, np->mac);
 if (err != 0)
  goto error;


 ifp = np->xn_ifp = if_alloc(IFT_ETHER);
     ifp->if_softc = np;
     if_initname(ifp, "xn", device_get_unit(dev));
     ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
     ifp->if_ioctl = xn_ioctl;

 ifp->if_transmit = xn_txq_mq_start;
 ifp->if_qflush = xn_qflush;

     ifp->if_init = xn_ifinit;

     ifp->if_hwassist = XN_CSUM_FEATURES;

 ifp->if_capenable = ifp->if_capabilities =
     IFCAP_HWCSUM|IFCAP_TSO4|IFCAP_LRO;
 ifp->if_hw_tsomax = 65536 - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN);
 ifp->if_hw_tsomaxsegcount = MAX_TX_REQ_FRAGS;
 ifp->if_hw_tsomaxsegsize = PAGE_SIZE;

     ether_ifattach(ifp, np->mac);
 netfront_carrier_off(np);

 return (0);

error:
 KASSERT(err != 0, ("Error path with no error code specified"));
 return (err);
}
