
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct msk_if_softc {int msk_if_dev; } ;


 int PHY_ADDR_MARV ;
 int PHY_MARV_INT_STAT ;
 int PHY_M_IS_FIFO_ERROR ;
 int device_printf (int ,char*) ;
 int msk_phy_readreg (struct msk_if_softc*,int ,int ) ;

__attribute__((used)) static void
msk_intr_phy(struct msk_if_softc *sc_if)
{
 uint16_t status;

 msk_phy_readreg(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_STAT);
 status = msk_phy_readreg(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_STAT);

 if ((status & PHY_M_IS_FIFO_ERROR))
  device_printf(sc_if->msk_if_dev,
      "PHY FIFO underrun/overflow.\n");
}
