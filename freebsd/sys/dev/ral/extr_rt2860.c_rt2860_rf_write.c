
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2860_softc {int sc_dev; } ;


 int DELAY (int) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_RF_CSR_CFG0 ;
 int RT2860_RF_REG_CTRL ;
 int RT2860_RF_REG_WIDTH_SHIFT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
rt2860_rf_write(struct rt2860_softc *sc, uint8_t reg, uint32_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2860_RF_CSR_CFG0) & RT2860_RF_REG_CTRL))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to RF\n");
  return;
 }


 tmp = RT2860_RF_REG_CTRL | 24 << RT2860_RF_REG_WIDTH_SHIFT |
     (val & 0x3fffff) << 2 | (reg & 3);
 RAL_WRITE(sc, RT2860_RF_CSR_CFG0, tmp);
}
