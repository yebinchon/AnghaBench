
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {int sc_dev; } ;


 int DELAY (int) ;
 int DPRINTFN (struct rt2560_softc*,int,char*,int,int) ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_BBPCSR ;
 int RT2560_BBP_BUSY ;
 int RT2560_BBP_WRITE ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
rt2560_bbp_write(struct rt2560_softc *sc, uint8_t reg, uint8_t val)
{
 uint32_t tmp;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2560_BBPCSR) & RT2560_BBP_BUSY))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not write to BBP\n");
  return;
 }

 tmp = RT2560_BBP_WRITE | RT2560_BBP_BUSY | reg << 8 | val;
 RAL_WRITE(sc, RT2560_BBPCSR, tmp);

 DPRINTFN(sc, 15, "BBP R%u <- 0x%02x\n", reg, val);
}
