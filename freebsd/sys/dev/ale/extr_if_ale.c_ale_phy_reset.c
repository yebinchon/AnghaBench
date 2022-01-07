
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ale_softc {int ale_phyaddr; int ale_dev; } ;


 int ALE_GPHY_CTRL ;
 int ATPHY_DBG_ADDR ;
 int ATPHY_DBG_DATA ;
 int CSR_WRITE_2 (struct ale_softc*,int ,int) ;
 int DELAY (int) ;
 int GPHY_CTRL_EXT_RESET ;
 int GPHY_CTRL_HIB_EN ;
 int GPHY_CTRL_HIB_PULSE ;
 int GPHY_CTRL_PHY_PLL_ON ;
 int GPHY_CTRL_SEL_ANA_RESET ;
 int ale_miibus_writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
ale_phy_reset(struct ale_softc *sc)
{


 CSR_WRITE_2(sc, ALE_GPHY_CTRL,
     GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE | GPHY_CTRL_SEL_ANA_RESET |
     GPHY_CTRL_PHY_PLL_ON);
 DELAY(1000);
 CSR_WRITE_2(sc, ALE_GPHY_CTRL,
     GPHY_CTRL_EXT_RESET | GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE |
     GPHY_CTRL_SEL_ANA_RESET | GPHY_CTRL_PHY_PLL_ON);
 DELAY(1000);





 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x0B);
 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1E, 0xBC00);

 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x00);
 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1E, 0x02EF);

 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x12);
 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1E, 0x4C04);

 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x04);
 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x8BBB);

 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x05);
 ale_miibus_writereg(sc->ale_dev, sc->ale_phyaddr,
     0x1D, 0x2C46);



 DELAY(1000);
}
