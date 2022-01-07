
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {int bce_phy_flags; int bce_phy_addr; int bce_dev; } ;


 int BCE_PHY_IEEE_CLAUSE_45_FLAG ;
 int BCE_PHY_REMOTE_CAP_FLAG ;
 int BRGPHY_ADDR_EXT ;
 int BRGPHY_ADDR_EXT_AN_MMD ;
 int BRGPHY_BLOCK_ADDR ;
 int BRGPHY_BLOCK_ADDR_ADDR_EXT ;
 int BRGPHY_BLOCK_ADDR_COMBO_IEEE0 ;
 int bce_miibus_write_reg (int ,int ,int ,int ) ;

__attribute__((used)) static void
bce_init_media(struct bce_softc *sc)
{
 if ((sc->bce_phy_flags & (BCE_PHY_IEEE_CLAUSE_45_FLAG |
     BCE_PHY_REMOTE_CAP_FLAG)) == BCE_PHY_IEEE_CLAUSE_45_FLAG) {
  bce_miibus_write_reg(sc->bce_dev, sc->bce_phy_addr,
      BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_ADDR_EXT);
  bce_miibus_write_reg(sc->bce_dev, sc->bce_phy_addr,
      BRGPHY_ADDR_EXT, BRGPHY_ADDR_EXT_AN_MMD);


  bce_miibus_write_reg(sc->bce_dev, sc->bce_phy_addr,
      BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_COMBO_IEEE0);
 }
}
