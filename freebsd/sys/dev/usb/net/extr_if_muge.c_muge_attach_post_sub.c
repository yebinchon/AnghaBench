
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_methods; int ue_miibus; int ue_dev; struct ifnet* ue_ifp; } ;
struct muge_softc {int sc_phyno; } ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; TYPE_2__ if_snd; int if_init; int if_ioctl; int if_start; } ;
struct TYPE_4__ {int ue_mii_sts; } ;


 int BMSR_DEFCAPMASK ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int Giant ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int ) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int MII_OFFSET_ANY ;
 scalar_t__ MUGE_DEFAULT_RX_CSUM_ENABLE ;
 scalar_t__ MUGE_DEFAULT_TSO_CSUM_ENABLE ;
 scalar_t__ MUGE_DEFAULT_TX_CSUM_ENABLE ;
 int ifqmaxlen ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int muge_dbg_printf (struct muge_softc*,char*) ;
 int muge_ioctl ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;
 int uether_ifmedia_upd ;
 int uether_init ;
 int uether_start ;

__attribute__((used)) static int
muge_attach_post_sub(struct usb_ether *ue)
{
 struct muge_softc *sc;
 struct ifnet *ifp;
 int error;

 sc = uether_getsc(ue);
 muge_dbg_printf(sc, "Calling muge_attach_post_sub.\n");
 ifp = ue->ue_ifp;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = uether_start;
 ifp->if_ioctl = muge_ioctl;
 ifp->if_init = uether_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);






 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_hwassist = 0;
 if (MUGE_DEFAULT_RX_CSUM_ENABLE)
  ifp->if_capabilities |= IFCAP_RXCSUM;

 if (MUGE_DEFAULT_TX_CSUM_ENABLE)
  ifp->if_capabilities |= IFCAP_TXCSUM;






 if (MUGE_DEFAULT_TSO_CSUM_ENABLE)
  ifp->if_capabilities |= IFCAP_TSO4 | IFCAP_TSO6;
 ifp->if_capenable = ifp->if_capabilities;

 mtx_lock(&Giant);
 error = mii_attach(ue->ue_dev, &ue->ue_miibus, ifp,
  uether_ifmedia_upd, ue->ue_methods->ue_mii_sts,
  BMSR_DEFCAPMASK, sc->sc_phyno, MII_OFFSET_ANY, 0);
 mtx_unlock(&Giant);

 return (0);
}
