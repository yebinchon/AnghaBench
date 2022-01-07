
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rt2560_softc {int dummy; } ;


 int RAL_READ (struct rt2560_softc*,int ) ;
 int RT2560_93C46 ;
 int RT2560_C ;
 int RT2560_CSR21 ;
 int RT2560_D ;
 int RT2560_EEPROM_CTL (struct rt2560_softc*,int) ;
 int RT2560_Q ;
 int RT2560_S ;
 int RT2560_SHIFT_D ;
 int RT2560_SHIFT_Q ;

__attribute__((used)) static uint16_t
rt2560_eeprom_read(struct rt2560_softc *sc, uint8_t addr)
{
 uint32_t tmp;
 uint16_t val;
 int n;


 RT2560_EEPROM_CTL(sc, 0);

 RT2560_EEPROM_CTL(sc, RT2560_S);
 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_C);
 RT2560_EEPROM_CTL(sc, RT2560_S);


 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_D);
 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_D | RT2560_C);


 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_D);
 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_D | RT2560_C);
 RT2560_EEPROM_CTL(sc, RT2560_S);
 RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_C);


 n = (RAL_READ(sc, RT2560_CSR21) & RT2560_93C46) ? 5 : 7;
 for (; n >= 0; n--) {
  RT2560_EEPROM_CTL(sc, RT2560_S |
      (((addr >> n) & 1) << RT2560_SHIFT_D));
  RT2560_EEPROM_CTL(sc, RT2560_S |
      (((addr >> n) & 1) << RT2560_SHIFT_D) | RT2560_C);
 }

 RT2560_EEPROM_CTL(sc, RT2560_S);


 val = 0;
 for (n = 15; n >= 0; n--) {
  RT2560_EEPROM_CTL(sc, RT2560_S | RT2560_C);
  tmp = RAL_READ(sc, RT2560_CSR21);
  val |= ((tmp & RT2560_Q) >> RT2560_SHIFT_Q) << n;
  RT2560_EEPROM_CTL(sc, RT2560_S);
 }

 RT2560_EEPROM_CTL(sc, 0);


 RT2560_EEPROM_CTL(sc, RT2560_S);
 RT2560_EEPROM_CTL(sc, 0);
 RT2560_EEPROM_CTL(sc, RT2560_C);

 return val;
}
