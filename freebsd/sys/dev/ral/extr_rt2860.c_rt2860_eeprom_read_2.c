
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rt2860_softc {int dummy; } ;


 int RAL_READ (struct rt2860_softc*,int ) ;
 int RT2860_C ;
 int RT2860_D ;
 int RT2860_EEPROM_CTL (struct rt2860_softc*,int) ;
 int RT2860_PCI_EECTRL ;
 int RT2860_Q ;
 int RT2860_S ;
 int RT2860_SHIFT_D ;
 int RT2860_SHIFT_Q ;

__attribute__((used)) static uint16_t
rt2860_eeprom_read_2(struct rt2860_softc *sc, uint16_t addr)
{
 uint32_t tmp;
 uint16_t val;
 int n;


 RT2860_EEPROM_CTL(sc, 0);

 RT2860_EEPROM_CTL(sc, RT2860_S);
 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_C);
 RT2860_EEPROM_CTL(sc, RT2860_S);


 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_D);
 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_D | RT2860_C);


 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_D);
 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_D | RT2860_C);
 RT2860_EEPROM_CTL(sc, RT2860_S);
 RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_C);


 n = ((RAL_READ(sc, RT2860_PCI_EECTRL) & 0x30) == 0) ? 5 : 7;
 for (; n >= 0; n--) {
  RT2860_EEPROM_CTL(sc, RT2860_S |
      (((addr >> n) & 1) << RT2860_SHIFT_D));
  RT2860_EEPROM_CTL(sc, RT2860_S |
      (((addr >> n) & 1) << RT2860_SHIFT_D) | RT2860_C);
 }

 RT2860_EEPROM_CTL(sc, RT2860_S);


 val = 0;
 for (n = 15; n >= 0; n--) {
  RT2860_EEPROM_CTL(sc, RT2860_S | RT2860_C);
  tmp = RAL_READ(sc, RT2860_PCI_EECTRL);
  val |= ((tmp & RT2860_Q) >> RT2860_SHIFT_Q) << n;
  RT2860_EEPROM_CTL(sc, RT2860_S);
 }

 RT2860_EEPROM_CTL(sc, 0);


 RT2860_EEPROM_CTL(sc, RT2860_S);
 RT2860_EEPROM_CTL(sc, 0);
 RT2860_EEPROM_CTL(sc, RT2860_C);

 return val;
}
