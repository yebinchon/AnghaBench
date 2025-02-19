
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rum_softc {int sc_dev; } ;


 int DPRINTFN (int,char*,int) ;
 int RT2573_BBP_BUSY ;
 int RT2573_BBP_READ ;
 int RT2573_PHY_CSR3 ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ rum_bbp_busy (struct rum_softc*) ;
 scalar_t__ rum_pause (struct rum_softc*,int) ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static uint8_t
rum_bbp_read(struct rum_softc *sc, uint8_t reg)
{
 uint32_t val;
 int ntries;

 DPRINTFN(2, "reg=0x%08x\n", reg);

 if (rum_bbp_busy(sc) != 0) {
  device_printf(sc->sc_dev, "could not read BBP\n");
  return 0;
 }

 val = RT2573_BBP_BUSY | RT2573_BBP_READ | reg << 8;
 rum_write(sc, RT2573_PHY_CSR3, val);

 for (ntries = 0; ntries < 100; ntries++) {
  val = rum_read(sc, RT2573_PHY_CSR3);
  if (!(val & RT2573_BBP_BUSY))
   return val & 0xff;
  if (rum_pause(sc, hz / 100))
   break;
 }

 device_printf(sc->sc_dev, "could not read BBP\n");
 return 0;
}
