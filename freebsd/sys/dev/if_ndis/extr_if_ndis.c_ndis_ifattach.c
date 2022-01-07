
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct ndis_softc {int ifmedia; int ndis_hwassist; int ndis_dev; struct ifnet* ifp; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_baudrate; int if_hwassist; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct ndis_softc* if_softc; } ;
typedef int eaddr ;


 int ENOSPC ;
 int ETHER_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_IMASK ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int OID_802_3_CURRENT_ADDRESS ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int ether_ifattach (struct ifnet*,int *) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int ndis_get_info (struct ndis_softc*,int ,int *,int*) ;
 int ndis_ifioctl ;
 int ndis_ifmedia_sts ;
 int ndis_ifmedia_upd ;
 int ndis_ifstart ;
 int ndis_init ;
 int ndis_probe_offload (struct ndis_softc*) ;

__attribute__((used)) static int
ndis_ifattach(struct ndis_softc *sc)
{
 struct ifnet *ifp;
 u_char eaddr[ETHER_ADDR_LEN];
 int len;

 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0))
  return (ENOSPC);
 sc->ifp = ifp;
 ifp->if_softc = sc;


 ndis_probe_offload(sc);




 len = sizeof(eaddr);
 ndis_get_info(sc, OID_802_3_CURRENT_ADDRESS, eaddr, &len);

 if_initname(ifp, device_get_name(sc->ndis_dev),
     device_get_unit(sc->ndis_dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = ndis_ifioctl;
 ifp->if_start = ndis_ifstart;
 ifp->if_init = ndis_init;
 ifp->if_baudrate = 10000000;
 IFQ_SET_MAXLEN(&ifp->if_snd, 50);
 ifp->if_snd.ifq_drv_maxlen = 25;
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_hwassist = sc->ndis_hwassist;

 ifmedia_init(&sc->ifmedia, IFM_IMASK, ndis_ifmedia_upd,
     ndis_ifmedia_sts);
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_T, 0, ((void*)0));
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_T|IFM_FDX, 0, ((void*)0));
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_100_TX, 0, ((void*)0));
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_100_TX|IFM_FDX, 0, ((void*)0));
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->ifmedia, IFM_ETHER|IFM_AUTO);
 ether_ifattach(ifp, eaddr);

 return (0);
}
