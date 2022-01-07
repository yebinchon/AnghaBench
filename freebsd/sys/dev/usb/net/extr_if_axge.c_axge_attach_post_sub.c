
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_methods; int ue_miibus; int ue_dev; struct ifnet* ue_ifp; } ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; TYPE_2__ if_snd; int if_init; int if_ioctl; int if_start; } ;
struct axge_softc {int dummy; } ;
struct TYPE_4__ {int ue_mii_sts; } ;


 int AXGE_CSUM_FEATURES ;
 int AXGE_PHY_ADDR ;
 int BMSR_DEFCAPMASK ;
 int Giant ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int ) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int axge_ioctl ;
 int ifqmaxlen ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;
 int uether_ifmedia_upd ;
 int uether_init ;
 int uether_start ;

__attribute__((used)) static int
axge_attach_post_sub(struct usb_ether *ue)
{
 struct axge_softc *sc;
 struct ifnet *ifp;
 int error;

 sc = uether_getsc(ue);
 ifp = ue->ue_ifp;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = uether_start;
 ifp->if_ioctl = axge_ioctl;
 ifp->if_init = uether_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);

 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_TXCSUM | IFCAP_RXCSUM;
 ifp->if_hwassist = AXGE_CSUM_FEATURES;
 ifp->if_capenable = ifp->if_capabilities;

 mtx_lock(&Giant);
 error = mii_attach(ue->ue_dev, &ue->ue_miibus, ifp,
     uether_ifmedia_upd, ue->ue_methods->ue_mii_sts,
     BMSR_DEFCAPMASK, AXGE_PHY_ADDR, MII_OFFSET_ANY, MIIF_DOPAUSE);
 mtx_unlock(&Giant);

 return (error);
}
