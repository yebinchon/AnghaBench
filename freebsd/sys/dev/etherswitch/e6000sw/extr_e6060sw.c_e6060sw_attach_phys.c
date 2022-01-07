
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int es_nports; } ;
struct e6060sw_softc {int numports; int phymask; int* ifpport; int* portphy; int cpuport; TYPE_1__ info; int sc_dev; TYPE_2__** ifp; int ** miibus; scalar_t__ smi_offset; } ;
typedef int device_t ;
struct TYPE_6__ {int if_flags; int if_xname; struct e6060sw_softc* if_softc; } ;


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
 int M_E6060SW ;
 int M_WAITOK ;
 int M_ZERO ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int e6060sw_ifmedia_sts ;
 int e6060sw_ifmedia_upd ;
 TYPE_2__* if_alloc (int ) ;
 int if_initname (TYPE_2__*,char*,int) ;
 int * malloc (int,int ,int) ;
 int mii_attach (int ,int *,TYPE_2__*,int ,int ,int ,scalar_t__,int ,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
e6060sw_attach_phys(struct e6060sw_softc *sc)
{
 int phy, port, err;
 char name[IFNAMSIZ];

 port = 0;
 err = 0;

 snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(sc->sc_dev));
 for (phy = 0; phy < sc->numports; phy++) {
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
  sc->miibus[port] = malloc(sizeof(device_t), M_E6060SW,
      M_WAITOK | M_ZERO);
  err = mii_attach(sc->sc_dev, sc->miibus[port], sc->ifp[port],
      e6060sw_ifmedia_upd, e6060sw_ifmedia_sts, BMSR_DEFCAPMASK, phy + sc->smi_offset, MII_OFFSET_ANY, 0);

  DPRINTF(sc->sc_dev, "%s attached to pseudo interface %s\n",
      device_get_nameunit(*sc->miibus[port]),
      sc->ifp[port]->if_xname);
  if (err != 0) {
   device_printf(sc->sc_dev,
       "attaching PHY %d failed\n",
       phy);
   break;
  }
  ++port;
 }
 sc->info.es_nports = port;
 if (sc->cpuport != -1) {

  sc->ifpport[sc->cpuport] = port;
  sc->portphy[port] = sc->cpuport;
  ++sc->info.es_nports;
 }
 return (err);
}
