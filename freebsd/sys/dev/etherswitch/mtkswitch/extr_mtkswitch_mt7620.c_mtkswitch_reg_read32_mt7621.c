
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;


 int MTKSWITCH_GLOBAL_PHY ;
 int MTKSWITCH_GLOBAL_REG ;
 int MTKSWITCH_REG_ADDR (int) ;
 int MTKSWITCH_REG_HI (int) ;
 int MTKSWITCH_REG_LO (int) ;
 int mtkswitch_phy_read_locked (struct mtkswitch_softc*,int ,int ) ;
 int mtkswitch_phy_write_locked (struct mtkswitch_softc*,int ,int ,int ) ;

__attribute__((used)) static uint32_t
mtkswitch_reg_read32_mt7621(struct mtkswitch_softc *sc, int reg)
{
 uint32_t low, hi;

 mtkswitch_phy_write_locked(sc, MTKSWITCH_GLOBAL_PHY,
     MTKSWITCH_GLOBAL_REG, MTKSWITCH_REG_ADDR(reg));
 low = mtkswitch_phy_read_locked(sc, MTKSWITCH_GLOBAL_PHY,
     MTKSWITCH_REG_LO(reg));
 hi = mtkswitch_phy_read_locked(sc, MTKSWITCH_GLOBAL_PHY,
     MTKSWITCH_REG_HI(reg));;
 return (low | (hi << 16));
}
