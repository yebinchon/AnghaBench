
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct otus_softc {int eeprom; } ;


 int AR_CMD_RREG ;
 int AR_EEPROM_OFFSET ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int htole32 (int) ;
 int otus_cmd (struct otus_softc*,int ,int*,int,int *,int) ;

int
otus_read_eeprom(struct otus_softc *sc)
{
 uint32_t regs[8], reg;
 uint8_t *eep;
 int i, j, error;

 OTUS_LOCK_ASSERT(sc);


 eep = (uint8_t *)&sc->eeprom;
 reg = AR_EEPROM_OFFSET;
 for (i = 0; i < sizeof (sc->eeprom) / 32; i++) {
  for (j = 0; j < 8; j++, reg += 4)
   regs[j] = htole32(reg);
  error = otus_cmd(sc, AR_CMD_RREG, regs, sizeof regs, eep, 32);
  if (error != 0)
   break;
  eep += 32;
 }
 return error;
}
