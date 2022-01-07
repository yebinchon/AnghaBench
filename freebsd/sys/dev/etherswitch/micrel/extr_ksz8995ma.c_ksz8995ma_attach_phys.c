
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int es_nports; } ;
struct ksz8995ma_softc {int numports; int cpuport; int phymask; int* ifpport; int* portphy; int ** miibus; int ** ifname; TYPE_2__** ifp; int sc_dev; TYPE_1__ info; } ;
typedef int device_t ;
struct TYPE_7__ {int if_flags; int if_xname; struct ksz8995ma_softc* if_softc; } ;


 int BMSR_DEFCAPMASK ;
 int DPRINTF (int ,char*,char*,int ) ;
 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_DRV_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int IFT_ETHER ;
 int MII_OFFSET_ANY ;
 int M_KSZ8995MA ;
 int M_WAITOK ;
 int M_ZERO ;
 int device_delete_child (int ,int ) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int free (int *,int ) ;
 TYPE_2__* if_alloc (int ) ;
 int if_free (TYPE_2__*) ;
 int if_initname (TYPE_2__*,char*,int) ;
 int ksz8995ma_ifmedia_sts ;
 int ksz8995ma_ifmedia_upd ;
 int ksz8995ma_portforphy (struct ksz8995ma_softc*,int) ;
 int * malloc (int,int ,int) ;
 int mii_attach (int ,int *,TYPE_2__*,int ,int ,int ,int,int ,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
ksz8995ma_attach_phys(struct ksz8995ma_softc *sc)
{
 int phy, port, err;
 char name[IFNAMSIZ];

 port = 0;
 err = 0;

 snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(sc->sc_dev));
 for (phy = 0; phy < sc->numports; phy++) {
  if (phy == sc->cpuport)
   continue;
  if (((1 << phy) & sc->phymask) == 0)
   continue;
  sc->ifpport[phy] = port;
  sc->portphy[port] = phy;
  sc->ifp[port] = if_alloc(IFT_ETHER);
  if (sc->ifp[port] == ((void*)0)) {
   device_printf(sc->sc_dev, "couldn't allocate ifnet structure\n");
   err = ENOMEM;
   break;
  }

  sc->ifp[port]->if_softc = sc;
  sc->ifp[port]->if_flags |= IFF_UP | IFF_BROADCAST |
      IFF_DRV_RUNNING | IFF_SIMPLEX;
  if_initname(sc->ifp[port], name, port);
  sc->miibus[port] = malloc(sizeof(device_t), M_KSZ8995MA,
      M_WAITOK | M_ZERO);
  if (sc->miibus[port] == ((void*)0)) {
   err = ENOMEM;
   goto failed;
  }
  err = mii_attach(sc->sc_dev, sc->miibus[port], sc->ifp[port],
      ksz8995ma_ifmedia_upd, ksz8995ma_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);

  DPRINTF(sc->sc_dev, "%s attached to pseudo interface %s\n",
      device_get_nameunit(*sc->miibus[port]),
      sc->ifp[port]->if_xname);
  if (err != 0) {
   device_printf(sc->sc_dev,
       "attaching PHY %d failed\n",
       phy);
   goto failed;
  }
  ++port;
 }
 sc->info.es_nports = port;
 if (sc->cpuport != -1) {

  sc->ifpport[sc->cpuport] = port;
  sc->portphy[port] = sc->cpuport;
  ++sc->info.es_nports;
 }

 return (0);

failed:
 for (phy = 0; phy < sc->numports; phy++) {
  if (((1 << phy) & sc->phymask) == 0)
   continue;
  port = ksz8995ma_portforphy(sc, phy);
  if (sc->miibus[port] != ((void*)0))
   device_delete_child(sc->sc_dev, (*sc->miibus[port]));
  if (sc->ifp[port] != ((void*)0))
   if_free(sc->ifp[port]);
  if (sc->ifname[port] != ((void*)0))
   free(sc->ifname[port], M_KSZ8995MA);
  if (sc->miibus[port] != ((void*)0))
   free(sc->miibus[port], M_KSZ8995MA);
 }
 return (err);
}
