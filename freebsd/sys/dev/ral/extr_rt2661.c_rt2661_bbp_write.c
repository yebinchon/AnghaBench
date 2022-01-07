
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2661_softc {int sc_dev; } ;


 int DELAY (int) ;
 int DPRINTFN (struct rt2661_softc*,int,char*,int,int) ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_BBP_BUSY ;
 int RT2661_PHY_CSR3 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
rt2661_bbp_write(struct rt2661_softc *sc, uint8_t reg, uint8_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2661_PHY_CSR3) & RT2661_BBP_BUSY))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to BBP\n");
  return;
 }

 tmp = RT2661_BBP_BUSY | (reg & 0x7f) << 8 | val;
 RAL_WRITE(sc, RT2661_PHY_CSR3, tmp);

 DPRINTFN(sc, 15, "BBP R%u <- 0x%02x\n", reg, val);
}
