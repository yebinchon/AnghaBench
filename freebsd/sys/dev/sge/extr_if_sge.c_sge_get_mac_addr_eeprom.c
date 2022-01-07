
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct sge_softc {int sge_flags; int sge_dev; } ;


 scalar_t__ EEPROMInfo ;
 scalar_t__ EEPROMMACAddr ;
 scalar_t__ EEPROMSignature ;
 int EINVAL ;
 int ETHER_ADDR_LEN ;
 int SGE_FLAG_RGMII ;
 int device_printf (int ,char*,int) ;
 int sge_read_eeprom (struct sge_softc*,scalar_t__) ;

__attribute__((used)) static int
sge_get_mac_addr_eeprom(struct sge_softc *sc, uint8_t *dest)
{
 uint16_t val;
 int i;

 val = sge_read_eeprom(sc, EEPROMSignature);
 if (val == 0xffff || val == 0) {
  device_printf(sc->sge_dev,
      "invalid EEPROM signature : 0x%04x\n", val);
  return (EINVAL);
 }

 for (i = 0; i < ETHER_ADDR_LEN; i += 2) {
  val = sge_read_eeprom(sc, EEPROMMACAddr + i / 2);
  dest[i + 0] = (uint8_t)val;
  dest[i + 1] = (uint8_t)(val >> 8);
 }

 if ((sge_read_eeprom(sc, EEPROMInfo) & 0x80) != 0)
  sc->sge_flags |= SGE_FLAG_RGMII;
 return (0);
}
