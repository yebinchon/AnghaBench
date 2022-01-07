
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ phy_base; int * ifp; int * miibus; int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;


 int BMSR_DEFCAPMASK ;
 int MII_OFFSET_ANY ;
 int e6000sw_ifmedia_sts ;
 int e6000sw_ifmedia_upd ;
 int mii_attach (int ,int *,int ,int ,int ,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
e6000sw_attach_miibus(e6000sw_softc_t *sc, int port)
{
 int err;

 err = mii_attach(sc->dev, &sc->miibus[port], sc->ifp[port],
     e6000sw_ifmedia_upd, e6000sw_ifmedia_sts, BMSR_DEFCAPMASK,
     port + sc->phy_base, MII_OFFSET_ANY, 0);
 if (err != 0)
  return (err);

 return (0);
}
