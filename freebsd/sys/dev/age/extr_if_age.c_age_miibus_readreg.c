
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct age_softc {int age_dev; } ;
typedef int device_t ;


 int AGE_MDIO ;
 int AGE_PHY_TIMEOUT ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int) ;
 int DELAY (int) ;
 int MDIO_CLK_25_4 ;
 int MDIO_DATA_MASK ;
 int MDIO_DATA_SHIFT ;
 int MDIO_OP_BUSY ;
 int MDIO_OP_EXECUTE ;
 int MDIO_OP_READ ;
 int MDIO_REG_ADDR (int) ;
 int MDIO_SUP_PREAMBLE ;
 struct age_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
age_miibus_readreg(device_t dev, int phy, int reg)
{
 struct age_softc *sc;
 uint32_t v;
 int i;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, AGE_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
     MDIO_SUP_PREAMBLE | MDIO_CLK_25_4 | MDIO_REG_ADDR(reg));
 for (i = AGE_PHY_TIMEOUT; i > 0; i--) {
  DELAY(1);
  v = CSR_READ_4(sc, AGE_MDIO);
  if ((v & (MDIO_OP_EXECUTE | MDIO_OP_BUSY)) == 0)
   break;
 }

 if (i == 0) {
  device_printf(sc->age_dev, "phy read timeout : %d\n", reg);
  return (0);
 }

 return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}
