
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {int* rf_regs; int sc_dev; } ;


 int DELAY (int) ;
 int DPRINTFN (struct rt2560_softc*,int,char*,int,int) ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_RFCSR ;
 int RT2560_RF_20BIT ;
 int RT2560_RF_BUSY ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
rt2560_rf_write(struct rt2560_softc *sc, uint8_t reg, uint32_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2560_RFCSR) & RT2560_RF_BUSY))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to RF\n");
  return;
 }

 tmp = RT2560_RF_BUSY | RT2560_RF_20BIT | (val & 0xfffff) << 2 |
     (reg & 0x3);
 RAL_WRITE(sc, RT2560_RFCSR, tmp);


 sc->rf_regs[reg] = val;

 DPRINTFN(sc, 15, "RF R[%u] <- 0x%05x\n", reg & 0x3, val & 0xfffff);
}
