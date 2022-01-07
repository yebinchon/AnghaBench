
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {scalar_t__ type; int mdio_bus; int base_addr; } ;
typedef int device_t ;


 int BLOCK_7 ;
 int LANE_CFG ;
 scalar_t__ SGMIIC ;
 struct nlm_xlpge_softc* device_get_softc (int ) ;
 int nlm_gmac_mdio_write (int ,int ,int ,int ,int,int,int) ;

__attribute__((used)) static int
nlm_xlpge_mii_write(device_t dev, int phyaddr, int regidx, int val)
{
 struct nlm_xlpge_softc *sc;

 sc = device_get_softc(dev);
 if (sc->type == SGMIIC)
  nlm_gmac_mdio_write(sc->base_addr, sc->mdio_bus, BLOCK_7,
      LANE_CFG, phyaddr, regidx, val);

 return (0);
}
