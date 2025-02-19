
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;


 int MTKSWITCH_PIAC ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int) ;
 int PIAC_MDIO_CMD_READ ;
 int PIAC_MDIO_PHY_ADDR_OFF ;
 int PIAC_MDIO_REG_ADDR_OFF ;
 int PIAC_MDIO_RW_DATA_MASK ;
 int PIAC_MDIO_ST ;
 int PIAC_PHY_ACS_ST ;

__attribute__((used)) static int
mtkswitch_phy_read_locked(struct mtkswitch_softc *sc, int phy, int reg)
{
 uint32_t data;

 MTKSWITCH_WRITE(sc, MTKSWITCH_PIAC, PIAC_PHY_ACS_ST | PIAC_MDIO_ST |
     (reg << PIAC_MDIO_REG_ADDR_OFF) | (phy << PIAC_MDIO_PHY_ADDR_OFF) |
     PIAC_MDIO_CMD_READ);
 while ((data = MTKSWITCH_READ(sc, MTKSWITCH_PIAC)) & PIAC_PHY_ACS_ST);

 return ((int)(data & PIAC_MDIO_RW_DATA_MASK));
}
