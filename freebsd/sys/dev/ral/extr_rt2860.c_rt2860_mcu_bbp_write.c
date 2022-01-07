
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2860_softc {int sc_dev; } ;


 int DELAY (int) ;
 int RAL_BARRIER_WRITE (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_BBP_CSR_KICK ;
 int RT2860_BBP_RW_PARALLEL ;
 int RT2860_H2M_BBPAGENT ;
 int RT2860_MCU_CMD_BBP ;
 int device_printf (int ,char*) ;
 int rt2860_mcu_cmd (struct rt2860_softc*,int ,int ,int ) ;

void
rt2860_mcu_bbp_write(struct rt2860_softc *sc, uint8_t reg, uint8_t val)
{
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2860_H2M_BBPAGENT) & RT2860_BBP_CSR_KICK))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
   "could not write to BBP through MCU\n");
  return;
 }

 RAL_WRITE(sc, RT2860_H2M_BBPAGENT, RT2860_BBP_RW_PARALLEL |
     RT2860_BBP_CSR_KICK | reg << 8 | val);
 RAL_BARRIER_WRITE(sc);

 rt2860_mcu_cmd(sc, RT2860_MCU_CMD_BBP, 0, 0);
 DELAY(1000);
}
