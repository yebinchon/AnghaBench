
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lance_softc {int sc_nsupmedia; int sc_memsize; int sc_nrbuf; int sc_ntbuf; int sc_media; int sc_defaultmedia; int * sc_supmedia; int sc_mtx; int sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; int if_baudrate; int if_init; int if_ioctl; int if_start; struct lance_softc* if_softc; } ;


 int ENOSPC ;
 int ENXIO ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_ETHER ;
 int IFM_MAKEWORD (int ,int ,int ,int ) ;
 int IFM_MANUAL ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int ) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int IF_Mbps (int) ;
 int LEBLEN ;
 int LE_LOCK (struct lance_softc*) ;
 scalar_t__ LE_LOCK_INITIALIZED (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,char const*,int) ;
 int if_printf (struct ifnet*,char*,int,int) ;
 int ifmedia_add (int *,int ,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int ) ;
 int ifqmaxlen ;
 int lance_init ;
 int lance_ioctl ;
 int lance_mediachange ;
 int lance_mediastatus ;
 int lance_start ;
 int lance_stop (struct lance_softc*) ;

int
lance_config(struct lance_softc *sc, const char* name, int unit)
{
 struct ifnet *ifp;
 int i, nbuf;

 if (LE_LOCK_INITIALIZED(sc) == 0)
  return (ENXIO);

 ifp = sc->sc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0))
  return (ENOSPC);

 callout_init_mtx(&sc->sc_wdog_ch, &sc->sc_mtx, 0);


 ifp->if_softc = sc;
 if_initname(ifp, name, unit);
 ifp->if_start = lance_start;
 ifp->if_ioctl = lance_ioctl;
 ifp->if_init = lance_init;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;



 ifp->if_baudrate = IF_Mbps(10);
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);


 ifmedia_init(&sc->sc_media, 0, lance_mediachange, lance_mediastatus);
 if (sc->sc_supmedia != ((void*)0)) {
  for (i = 0; i < sc->sc_nsupmedia; i++)
   ifmedia_add(&sc->sc_media, sc->sc_supmedia[i], 0, ((void*)0));
  ifmedia_set(&sc->sc_media, sc->sc_defaultmedia);
 } else {
  ifmedia_add(&sc->sc_media,
      IFM_MAKEWORD(IFM_ETHER, IFM_MANUAL, 0, 0), 0, ((void*)0));
  ifmedia_set(&sc->sc_media,
      IFM_MAKEWORD(IFM_ETHER, IFM_MANUAL, 0, 0));
 }

 switch (sc->sc_memsize) {
 case 8192:
  sc->sc_nrbuf = 4;
  sc->sc_ntbuf = 1;
  break;
 case 16384:
  sc->sc_nrbuf = 8;
  sc->sc_ntbuf = 2;
  break;
 case 32768:
  sc->sc_nrbuf = 16;
  sc->sc_ntbuf = 4;
  break;
 case 65536:
  sc->sc_nrbuf = 32;
  sc->sc_ntbuf = 8;
  break;
 case 131072:
  sc->sc_nrbuf = 64;
  sc->sc_ntbuf = 16;
  break;
 case 262144:
  sc->sc_nrbuf = 128;
  sc->sc_ntbuf = 32;
  break;
 default:

  nbuf = sc->sc_memsize / LEBLEN;
  sc->sc_ntbuf = nbuf / 5;
  sc->sc_nrbuf = nbuf - sc->sc_ntbuf;
 }

 if_printf(ifp, "%d receive buffers, %d transmit buffers\n",
     sc->sc_nrbuf, sc->sc_ntbuf);


 LE_LOCK(sc);
 lance_stop(sc);
 LE_UNLOCK(sc);

 return (0);
}
