
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {int dummy; } ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int STE_EEOPCODE_READ ;
 int STE_EEPROM_CTL ;
 int STE_EEPROM_DATA ;
 int le16toh (int ) ;
 int ste_eeprom_wait (struct ste_softc*) ;

__attribute__((used)) static int
ste_read_eeprom(struct ste_softc *sc, uint16_t *dest, int off, int cnt)
{
 int err = 0, i;

 if (ste_eeprom_wait(sc))
  return (1);

 for (i = 0; i < cnt; i++) {
  CSR_WRITE_2(sc, STE_EEPROM_CTL, STE_EEOPCODE_READ | (off + i));
  err = ste_eeprom_wait(sc);
  if (err)
   break;
  *dest = le16toh(CSR_READ_2(sc, STE_EEPROM_DATA));
  dest++;
 }

 return (err ? 1 : 0);
}
