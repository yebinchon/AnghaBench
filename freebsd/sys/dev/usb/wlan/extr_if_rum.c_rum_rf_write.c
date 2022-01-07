
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rum_softc {int* rf_regs; int sc_dev; } ;


 int DPRINTFN (int,char*,int,int) ;
 int RT2573_PHY_CSR4 ;
 int RT2573_RF_20BIT ;
 int RT2573_RF_BUSY ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ rum_pause (struct rum_softc*,int) ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_rf_write(struct rum_softc *sc, uint8_t reg, uint32_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(rum_read(sc, RT2573_PHY_CSR4) & RT2573_RF_BUSY))
   break;
  if (rum_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to RF\n");
  return;
 }

 tmp = RT2573_RF_BUSY | RT2573_RF_20BIT | (val & 0xfffff) << 2 |
     (reg & 3);
 rum_write(sc, RT2573_PHY_CSR4, tmp);


 sc->rf_regs[reg] = val;

 DPRINTFN(15, "RF R[%u] <- 0x%05x\n", reg & 3, val & 0xfffff);
}
