
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int dummy; } ;


 int BRGPHY_MII_DSP_ADDR_REG ;
 int BRGPHY_MII_DSP_RW_PORT ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
brgphy_fixup_disable_early_dac(struct mii_softc *sc)
{
 uint32_t val;

 PHY_WRITE(sc, BRGPHY_MII_DSP_ADDR_REG, 0x0f08);
 val = PHY_READ(sc, BRGPHY_MII_DSP_RW_PORT);
 val &= ~(1 << 8);
 PHY_WRITE(sc, BRGPHY_MII_DSP_RW_PORT, val);

}
