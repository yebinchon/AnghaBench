
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct arswitch_softc {int numphys; TYPE_1__** dev_led; int sc_dev; TYPE_2__** ifp; int * miibus; int * ifname; } ;
struct TYPE_6__ {int if_flags; int if_xname; struct arswitch_softc* if_softc; } ;
struct TYPE_5__ {int phy; int lednum; struct arswitch_softc* sc; } ;


 int AR8327 ;
 scalar_t__ AR8X16_IS_SWITCH (struct arswitch_softc*,int ) ;
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
 int M_DEVBUF ;
 int M_WAITOK ;
 int arswitch_ifmedia_sts ;
 int arswitch_ifmedia_upd ;
 int arswitch_portforphy (int) ;
 int bcopy (char*,int ,scalar_t__) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_2__* if_alloc (int ) ;
 int if_initname (TYPE_2__*,int ,int) ;
 int malloc (scalar_t__,int ,int ) ;
 int mii_attach (int ,int *,TYPE_2__*,int ,int ,int ,int,int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,char*,int,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
arswitch_attach_phys(struct arswitch_softc *sc)
{
 int phy, err = 0;
 char name[IFNAMSIZ];


 snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(sc->sc_dev));
 for (phy = 0; phy < sc->numphys; phy++) {
  sc->ifp[phy] = if_alloc(IFT_ETHER);
  if (sc->ifp[phy] == ((void*)0)) {
   device_printf(sc->sc_dev, "couldn't allocate ifnet structure\n");
   err = ENOMEM;
   break;
  }

  sc->ifp[phy]->if_softc = sc;
  sc->ifp[phy]->if_flags |= IFF_UP | IFF_BROADCAST |
      IFF_DRV_RUNNING | IFF_SIMPLEX;
  sc->ifname[phy] = malloc(strlen(name)+1, M_DEVBUF, M_WAITOK);
  bcopy(name, sc->ifname[phy], strlen(name)+1);
  if_initname(sc->ifp[phy], sc->ifname[phy],
      arswitch_portforphy(phy));
  err = mii_attach(sc->sc_dev, &sc->miibus[phy], sc->ifp[phy],
      arswitch_ifmedia_upd, arswitch_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);






  if (err != 0) {
   device_printf(sc->sc_dev,
       "attaching PHY %d failed\n",
       phy);
   return (err);
  }

  if (AR8X16_IS_SWITCH(sc, AR8327)) {
   int led;
   char ledname[IFNAMSIZ+4];

   for (led = 0; led < 3; led++) {
    sprintf(ledname, "%s%dled%d", name,
        arswitch_portforphy(phy), led+1);
    sc->dev_led[phy][led].sc = sc;
    sc->dev_led[phy][led].phy = phy;
    sc->dev_led[phy][led].lednum = led;
   }
  }
 }
 return (0);
}
