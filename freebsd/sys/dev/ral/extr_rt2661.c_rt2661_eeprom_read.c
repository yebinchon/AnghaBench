
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rt2661_softc {int dummy; } ;


 int RAL_READ (struct rt2661_softc*,int ) ;
 int RT2661_93C46 ;
 int RT2661_C ;
 int RT2661_D ;
 int RT2661_E2PROM_CSR ;
 int RT2661_EEPROM_CTL (struct rt2661_softc*,int) ;
 int RT2661_Q ;
 int RT2661_S ;
 int RT2661_SHIFT_D ;
 int RT2661_SHIFT_Q ;

__attribute__((used)) static uint16_t
rt2661_eeprom_read(struct rt2661_softc *sc, uint8_t addr)
{
 uint32_t tmp;
 uint16_t val;
 int n;


 RT2661_EEPROM_CTL(sc, 0);

 RT2661_EEPROM_CTL(sc, RT2661_S);
 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_C);
 RT2661_EEPROM_CTL(sc, RT2661_S);


 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_D);
 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_D | RT2661_C);


 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_D);
 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_D | RT2661_C);
 RT2661_EEPROM_CTL(sc, RT2661_S);
 RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_C);


 n = (RAL_READ(sc, RT2661_E2PROM_CSR) & RT2661_93C46) ? 5 : 7;
 for (; n >= 0; n--) {
  RT2661_EEPROM_CTL(sc, RT2661_S |
      (((addr >> n) & 1) << RT2661_SHIFT_D));
  RT2661_EEPROM_CTL(sc, RT2661_S |
      (((addr >> n) & 1) << RT2661_SHIFT_D) | RT2661_C);
 }

 RT2661_EEPROM_CTL(sc, RT2661_S);


 val = 0;
 for (n = 15; n >= 0; n--) {
  RT2661_EEPROM_CTL(sc, RT2661_S | RT2661_C);
  tmp = RAL_READ(sc, RT2661_E2PROM_CSR);
  val |= ((tmp & RT2661_Q) >> RT2661_SHIFT_Q) << n;
  RT2661_EEPROM_CTL(sc, RT2661_S);
 }

 RT2661_EEPROM_CTL(sc, 0);


 RT2661_EEPROM_CTL(sc, RT2661_S);
 RT2661_EEPROM_CTL(sc, 0);
 RT2661_EEPROM_CTL(sc, RT2661_C);

 return val;
}
