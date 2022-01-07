
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_mdio_softc {int phy_desc_head; } ;
struct phy_desc {int lmacid; int * ifp; int miibus; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int ENOMEM ;
 int ENXIO ;
 int IFT_ETHER ;
 int MDIO_LOCK (struct thunder_mdio_softc*) ;
 int MDIO_UNLOCK (struct thunder_mdio_softc*) ;
 int MII_OFFSET_ANY ;
 int M_NOWAIT ;
 int M_THUNDER_MDIO ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct phy_desc*,int ) ;
 struct thunder_mdio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int free (struct phy_desc*,int ) ;
 struct phy_desc* get_phy_desc (struct thunder_mdio_softc*,int) ;
 int * if_alloc (int ) ;
 int if_free (int *) ;
 struct phy_desc* malloc (int,int ,int) ;
 int mii_attach (int ,int *,int *,int ,int ,int ,int,int ,int ) ;
 int phy_desc_list ;
 int thunder_ifmedia_change_stub ;
 int thunder_ifmedia_status_stub ;

__attribute__((used)) static int
thunder_mdio_phy_connect(device_t dev, int lmacid, int phy)
{
 struct thunder_mdio_softc *sc;
 struct phy_desc *pd;
 int err;

 sc = device_get_softc(dev);

 MDIO_LOCK(sc);
 pd = get_phy_desc(sc, lmacid);
 MDIO_UNLOCK(sc);
 if (pd == ((void*)0)) {
  pd = malloc(sizeof(*pd), M_THUNDER_MDIO, (M_NOWAIT | M_ZERO));
  if (pd == ((void*)0))
   return (ENOMEM);
  pd->ifp = if_alloc(IFT_ETHER);
  if (pd->ifp == ((void*)0)) {
   free(pd, M_THUNDER_MDIO);
   return (ENOMEM);
  }
  pd->lmacid = lmacid;
 }

 err = mii_attach(dev, &pd->miibus, pd->ifp,
     thunder_ifmedia_change_stub, thunder_ifmedia_status_stub,
     BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);

 if (err != 0) {
  device_printf(dev, "Could not attach PHY%d\n", phy);
  if_free(pd->ifp);
  free(pd, M_THUNDER_MDIO);
  return (ENXIO);
 }

 MDIO_LOCK(sc);
 TAILQ_INSERT_TAIL(&sc->phy_desc_head, pd, phy_desc_list);
 MDIO_UNLOCK(sc);

 return (0);
}
