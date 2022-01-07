
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rum_softc {int sc_dev; } ;


 int DPRINTFN (int,char*,int) ;
 int RT2573_BBP_BUSY ;
 int RT2573_PHY_CSR3 ;
 int device_printf (int ,char*) ;
 scalar_t__ rum_bbp_busy (struct rum_softc*) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_bbp_write(struct rum_softc *sc, uint8_t reg, uint8_t val)
{
 uint32_t tmp;

 DPRINTFN(2, "reg=0x%08x\n", reg);

 if (rum_bbp_busy(sc) != 0) {
  device_printf(sc->sc_dev, "could not write to BBP\n");
  return;
 }

 tmp = RT2573_BBP_BUSY | (reg & 0x7f) << 8 | val;
 rum_write(sc, RT2573_PHY_CSR3, tmp);
}
