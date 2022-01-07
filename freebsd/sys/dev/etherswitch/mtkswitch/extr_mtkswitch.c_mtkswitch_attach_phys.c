
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mtkswitch_softc {int numphys; unsigned int phymap; TYPE_1__** ifp; int ** miibus; int * sc_dev; int ** ifname; } ;
struct TYPE_4__ {int if_flags; int if_xname; struct mtkswitch_softc* if_softc; } ;


 int BMSR_DEFCAPMASK ;
 int DPRINTF (int *,char*,char*,int ) ;
 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_DRV_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int IFT_ETHER ;
 int MII_OFFSET_ANY ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int bcopy (char*,int *,scalar_t__) ;
 char* device_get_nameunit (int *) ;
 int device_printf (int *,char*,...) ;
 TYPE_1__* if_alloc (int ) ;
 int if_initname (TYPE_1__*,int *,int ) ;
 int * malloc (scalar_t__,int ,int ) ;
 int mii_attach (int *,int **,TYPE_1__*,int ,int ,int ,int,int ,int ) ;
 int mtkswitch_ifmedia_sts ;
 int mtkswitch_ifmedia_upd ;
 int mtkswitch_portforphy (int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
mtkswitch_attach_phys(struct mtkswitch_softc *sc)
{
 int phy, err = 0;
 char name[IFNAMSIZ];


 snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(sc->sc_dev));
 for (phy = 0; phy < sc->numphys; phy++) {
  if ((sc->phymap & (1u << phy)) == 0) {
   sc->ifp[phy] = ((void*)0);
   sc->ifname[phy] = ((void*)0);
   sc->miibus[phy] = ((void*)0);
   continue;
  }
  sc->ifp[phy] = if_alloc(IFT_ETHER);
  if (sc->ifp[phy] == ((void*)0)) {
   device_printf(sc->sc_dev, "couldn't allocate ifnet structure\n");
   err = ENOMEM;
   break;
  }

  sc->ifp[phy]->if_softc = sc;
  sc->ifp[phy]->if_flags |= IFF_UP | IFF_BROADCAST |
      IFF_DRV_RUNNING | IFF_SIMPLEX;
  sc->ifname[phy] = malloc(strlen(name) + 1, M_DEVBUF, M_WAITOK);
  bcopy(name, sc->ifname[phy], strlen(name) + 1);
  if_initname(sc->ifp[phy], sc->ifname[phy],
      mtkswitch_portforphy(phy));
  err = mii_attach(sc->sc_dev, &sc->miibus[phy], sc->ifp[phy],
      mtkswitch_ifmedia_upd, mtkswitch_ifmedia_sts,
      BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
  if (err != 0) {
   device_printf(sc->sc_dev,
       "attaching PHY %d failed\n",
       phy);
  } else {
   DPRINTF(sc->sc_dev, "%s attached to pseudo interface "
       "%s\n", device_get_nameunit(sc->miibus[phy]),
       sc->ifp[phy]->if_xname);
  }
 }
 return (err);
}
