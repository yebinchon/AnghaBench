
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_mdio_softc {int phy_desc_head; } ;
struct phy_desc {int ifp; int miibus; } ;
typedef int device_t ;


 int EINVAL ;
 int MDIO_LOCK (struct thunder_mdio_softc*) ;
 int MDIO_UNLOCK (struct thunder_mdio_softc*) ;
 int M_THUNDER_MDIO ;
 int TAILQ_REMOVE (int *,struct phy_desc*,int ) ;
 int bus_generic_detach (int ) ;
 int device_delete_child (int ,int ) ;
 struct thunder_mdio_softc* device_get_softc (int ) ;
 int free (struct phy_desc*,int ) ;
 struct phy_desc* get_phy_desc (struct thunder_mdio_softc*,int) ;
 int if_free (int ) ;
 int phy_desc_list ;

__attribute__((used)) static int
thunder_mdio_phy_disconnect(device_t dev, int lmacid, int phy)
{
 struct thunder_mdio_softc *sc;
 struct phy_desc *pd;

 sc = device_get_softc(dev);
 MDIO_LOCK(sc);

 pd = get_phy_desc(sc, lmacid);
 if (pd == ((void*)0)) {
  MDIO_UNLOCK(sc);
  return (EINVAL);
 }


 TAILQ_REMOVE(&sc->phy_desc_head, pd, phy_desc_list);


 bus_generic_detach(dev);
 device_delete_child(dev, pd->miibus);

 if_free(pd->ifp);

 free(pd, M_THUNDER_MDIO);
 MDIO_UNLOCK(sc);

 return (0);
}
