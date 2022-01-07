
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ural_softc {int* rf_regs; int sc_dev; } ;


 int DPRINTFN (int,char*,int,int) ;
 int RAL_PHY_CSR10 ;
 int RAL_PHY_CSR9 ;
 int RAL_RF_20BIT ;
 int RAL_RF_BUSY ;
 int RAL_RF_LOBUSY ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ ural_pause (struct ural_softc*,int) ;
 int ural_read (struct ural_softc*,int ) ;
 int ural_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_rf_write(struct ural_softc *sc, uint8_t reg, uint32_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(ural_read(sc, RAL_PHY_CSR10) & RAL_RF_LOBUSY))
   break;
  if (ural_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to RF\n");
  return;
 }

 tmp = RAL_RF_BUSY | RAL_RF_20BIT | (val & 0xfffff) << 2 | (reg & 0x3);
 ural_write(sc, RAL_PHY_CSR9, tmp & 0xffff);
 ural_write(sc, RAL_PHY_CSR10, tmp >> 16);


 sc->rf_regs[reg] = val;

 DPRINTFN(15, "RF R[%u] <- 0x%05x\n", reg & 0x3, val & 0xfffff);
}
