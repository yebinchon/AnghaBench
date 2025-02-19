
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; int alc_dev; } ;


 int ALC_EXT_MDIO ;
 int ALC_FLAG_LINK ;
 int ALC_MDIO ;
 int ALC_PHY_TIMEOUT ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int EXT_MDIO_DEVADDR (int) ;
 int EXT_MDIO_REG (int) ;
 int MDIO_CLK_25_128 ;
 int MDIO_CLK_25_4 ;
 int MDIO_DATA_MASK ;
 int MDIO_DATA_SHIFT ;
 int MDIO_MODE_EXT ;
 int MDIO_OP_BUSY ;
 int MDIO_OP_EXECUTE ;
 int MDIO_OP_READ ;
 int MDIO_SUP_PREAMBLE ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static uint32_t
alc_miiext_readreg(struct alc_softc *sc, int devaddr, int reg)
{
 uint32_t clk, v;
 int i;

 CSR_WRITE_4(sc, ALC_EXT_MDIO, EXT_MDIO_REG(reg) |
     EXT_MDIO_DEVADDR(devaddr));
 if ((sc->alc_flags & ALC_FLAG_LINK) != 0)
  clk = MDIO_CLK_25_128;
 else
  clk = MDIO_CLK_25_4;
 CSR_WRITE_4(sc, ALC_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
     MDIO_SUP_PREAMBLE | clk | MDIO_MODE_EXT);
 for (i = ALC_PHY_TIMEOUT; i > 0; i--) {
  DELAY(5);
  v = CSR_READ_4(sc, ALC_MDIO);
  if ((v & MDIO_OP_BUSY) == 0)
   break;
 }

 if (i == 0) {
  device_printf(sc->alc_dev, "phy ext read timeout : %d, %d\n",
      devaddr, reg);
  return (0);
 }

 return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}
