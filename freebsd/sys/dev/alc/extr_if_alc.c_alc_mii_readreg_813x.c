
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; int alc_dev; } ;


 int ALC_FLAG_FASTETHER ;
 int ALC_MDIO ;
 int ALC_PHY_TIMEOUT ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int MDIO_CLK_25_4 ;
 int MDIO_DATA_MASK ;
 int MDIO_DATA_SHIFT ;
 int MDIO_OP_BUSY ;
 int MDIO_OP_EXECUTE ;
 int MDIO_OP_READ ;
 int MDIO_REG_ADDR (int) ;
 int MDIO_SUP_PREAMBLE ;
 int MII_EXTSR ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static uint32_t
alc_mii_readreg_813x(struct alc_softc *sc, int phy, int reg)
{
 uint32_t v;
 int i;







 if ((sc->alc_flags & ALC_FLAG_FASTETHER) != 0 &&
     reg == MII_EXTSR)
  return (0);

 CSR_WRITE_4(sc, ALC_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
     MDIO_SUP_PREAMBLE | MDIO_CLK_25_4 | MDIO_REG_ADDR(reg));
 for (i = ALC_PHY_TIMEOUT; i > 0; i--) {
  DELAY(5);
  v = CSR_READ_4(sc, ALC_MDIO);
  if ((v & (MDIO_OP_EXECUTE | MDIO_OP_BUSY)) == 0)
   break;
 }

 if (i == 0) {
  device_printf(sc->alc_dev, "phy read timeout : %d\n", reg);
  return (0);
 }

 return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}
