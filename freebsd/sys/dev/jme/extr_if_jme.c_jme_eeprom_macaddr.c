
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct jme_softc {int jme_eaddr; } ;


 int ENOENT ;
 int ETHER_ADDR_LEN ;
 scalar_t__ JME_EEPROM_DESC_BYTES ;
 scalar_t__ JME_EEPROM_DESC_END ;
 scalar_t__ JME_EEPROM_END ;
 int JME_EEPROM_FUNC0 ;
 scalar_t__ JME_EEPROM_FUNC_MASK ;
 scalar_t__ JME_EEPROM_MKDESC (int ,int ) ;
 int JME_EEPROM_PAGE_BAR1 ;
 scalar_t__ JME_EEPROM_PAGE_MASK ;
 scalar_t__ JME_EEPROM_SIG0 ;
 scalar_t__ JME_EEPROM_SIG1 ;
 scalar_t__ JME_PAR0 ;
 int bcopy (scalar_t__*,int ,int) ;
 scalar_t__ jme_eeprom_read_byte (struct jme_softc*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int
jme_eeprom_macaddr(struct jme_softc *sc)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 uint8_t fup, reg, val;
 uint32_t offset;
 int match;

 offset = 0;
 if (jme_eeprom_read_byte(sc, offset++, &fup) != 0 ||
     fup != JME_EEPROM_SIG0)
  return (ENOENT);
 if (jme_eeprom_read_byte(sc, offset++, &fup) != 0 ||
     fup != JME_EEPROM_SIG1)
  return (ENOENT);
 match = 0;
 do {
  if (jme_eeprom_read_byte(sc, offset, &fup) != 0)
   break;
  if (JME_EEPROM_MKDESC(JME_EEPROM_FUNC0, JME_EEPROM_PAGE_BAR1) ==
      (fup & (JME_EEPROM_FUNC_MASK | JME_EEPROM_PAGE_MASK))) {
   if (jme_eeprom_read_byte(sc, offset + 1, &reg) != 0)
    break;
   if (reg >= JME_PAR0 &&
       reg < JME_PAR0 + ETHER_ADDR_LEN) {
    if (jme_eeprom_read_byte(sc, offset + 2,
        &val) != 0)
     break;
    eaddr[reg - JME_PAR0] = val;
    match++;
   }
  }

  if ((fup & JME_EEPROM_DESC_END) == JME_EEPROM_DESC_END)
   break;

  offset += JME_EEPROM_DESC_BYTES;
 } while (match != ETHER_ADDR_LEN && offset < JME_EEPROM_END);

 if (match == ETHER_ADDR_LEN) {
  bcopy(eaddr, sc->jme_eaddr, ETHER_ADDR_LEN);
  return (0);
 }

 return (ENOENT);
}
