
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* ifm_cur; int ifm_media; } ;
struct TYPE_10__ {TYPE_4__ mii_media; } ;
struct nlm_xlpge_softc {int block; int port; int if_flags; int dev_addr; TYPE_2__ xlpge_mii; struct ifnet* xlpge_if; int xlpge_dev; } ;
struct TYPE_13__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_transmit; TYPE_7__ if_snd; scalar_t__ if_hwassist; int if_init; int if_ioctl; scalar_t__ if_capabilities; scalar_t__ if_capenable; struct nlm_xlpge_softc* if_softc; } ;
typedef int device_t ;
struct TYPE_11__ {struct ifnet* xlpge_if; } ;
struct TYPE_9__ {int ifm_media; } ;


 int ENOSPC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_7__*,int ) ;
 int IFQ_SET_READY (TYPE_7__*) ;
 int IFT_ETHER ;
 int NLM_XLPGE_TXQ_SIZE ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (TYPE_4__*,int,int ,int *) ;
 int ifmedia_init (TYPE_4__*,int ,int ,int ) ;
 int ifmedia_set (TYPE_4__*,int) ;
 TYPE_3__* ifp_ports ;
 int nlm_xlpge_init ;
 int nlm_xlpge_ioctl ;
 int xlpge_mediachange ;
 int xlpge_mediastatus ;
 int xlpge_read_mac_addr (struct nlm_xlpge_softc*) ;
 int xlpge_tx ;

__attribute__((used)) static int
nlm_xlpge_ifinit(struct nlm_xlpge_softc *sc)
{
 struct ifnet *ifp;
 device_t dev;
 int port = sc->block * 4 + sc->port;

 dev = sc->xlpge_dev;
 ifp = sc->xlpge_if = if_alloc(IFT_ETHER);

 ifp_ports[port].xlpge_if = ifp;

 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot if_alloc()\n");
  return (ENOSPC);
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 sc->if_flags = ifp->if_flags;

 ifp->if_capabilities = 0;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_ioctl = nlm_xlpge_ioctl;
 ifp->if_init = nlm_xlpge_init ;
 ifp->if_hwassist = 0;
 ifp->if_snd.ifq_drv_maxlen = NLM_XLPGE_TXQ_SIZE;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);

 ifmedia_init(&sc->xlpge_mii.mii_media, 0, xlpge_mediachange,
     xlpge_mediastatus);
 ifmedia_add(&sc->xlpge_mii.mii_media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->xlpge_mii.mii_media, IFM_ETHER | IFM_AUTO);
 sc->xlpge_mii.mii_media.ifm_media =
     sc->xlpge_mii.mii_media.ifm_cur->ifm_media;
 xlpge_read_mac_addr(sc);

 ether_ifattach(ifp, sc->dev_addr);


 ifp->if_transmit = xlpge_tx;

 return (0);
}
