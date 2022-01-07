
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ifq_drv_maxlen; } ;
struct TYPE_11__ {int if_flags; int if_hwassist; int if_hw_tsomaxsegsize; int if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int if_baudrate; int if_capabilities; int if_capenable; TYPE_7__ if_snd; int if_qflush; int if_transmit; TYPE_2__* if_softc; int if_mtu; int if_init; int if_start; int if_ioctl; } ;
struct TYPE_9__ {int mac_addr; } ;
struct TYPE_10__ {TYPE_1__ macaddr; TYPE_4__* ifp; int dev; int media; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int ENOMEM ;
 int ETHERMTU ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_LRO ;
 int IFCAP_TSO ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTSO ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_IMASK ;
 int IFQ_SET_MAXLEN (TYPE_7__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_7__*) ;
 int IFT_ETHER ;
 int IF_Gbps (int) ;
 int OCE_IF_CAPABILITIES ;
 int OCE_IF_HWASSIST ;
 scalar_t__ OCE_MAX_TX_DESC ;
 int OCE_MAX_TX_ELEMENTS ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int ether_ifattach (TYPE_4__*,int ) ;
 TYPE_4__* if_alloc (int ) ;
 int if_initname (TYPE_4__*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int oce_init ;
 int oce_ioctl ;
 int oce_media_change ;
 int oce_media_status ;
 int oce_multiq_flush ;
 int oce_multiq_start ;
 int oce_start ;

__attribute__((used)) static int
oce_attach_ifp(POCE_SOFTC sc)
{

 sc->ifp = if_alloc(IFT_ETHER);
 if (!sc->ifp)
  return ENOMEM;

 ifmedia_init(&sc->media, IFM_IMASK, oce_media_change, oce_media_status);
 ifmedia_add(&sc->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->media, IFM_ETHER | IFM_AUTO);

 sc->ifp->if_flags = IFF_BROADCAST | IFF_MULTICAST;
 sc->ifp->if_ioctl = oce_ioctl;
 sc->ifp->if_start = oce_start;
 sc->ifp->if_init = oce_init;
 sc->ifp->if_mtu = ETHERMTU;
 sc->ifp->if_softc = sc;





 if_initname(sc->ifp,
      device_get_name(sc->dev), device_get_unit(sc->dev));

 sc->ifp->if_snd.ifq_drv_maxlen = OCE_MAX_TX_DESC - 1;
 IFQ_SET_MAXLEN(&sc->ifp->if_snd, sc->ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&sc->ifp->if_snd);

 sc->ifp->if_hwassist = OCE_IF_HWASSIST;
 sc->ifp->if_hwassist |= CSUM_TSO;
 sc->ifp->if_hwassist |= (CSUM_IP | CSUM_TCP | CSUM_UDP);

 sc->ifp->if_capabilities = OCE_IF_CAPABILITIES;
 sc->ifp->if_capabilities |= IFCAP_HWCSUM;
 sc->ifp->if_capabilities |= IFCAP_VLAN_HWFILTER;







 sc->ifp->if_capenable = sc->ifp->if_capabilities;
 sc->ifp->if_baudrate = IF_Gbps(10);







 ether_ifattach(sc->ifp, sc->macaddr.mac_addr);

 return 0;
}
