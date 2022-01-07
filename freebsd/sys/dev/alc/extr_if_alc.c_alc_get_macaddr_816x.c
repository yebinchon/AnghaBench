
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_dev; } ;


 int ALC_EEPROM_LD ;
 int ALC_SLD ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int EEPROM_LD_EEPROM_EXIST ;
 int EEPROM_LD_FLASH_EXIST ;
 int EEPROM_LD_PROGRESS ;
 int EEPROM_LD_START ;
 int SLD_PROGRESS ;
 int SLD_START ;
 int alc_get_macaddr_par (struct alc_softc*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
alc_get_macaddr_816x(struct alc_softc *sc)
{
 uint32_t reg;
 int i, reloaded;

 reloaded = 0;

 for (i = 100; i > 0; i--) {
  reg = CSR_READ_4(sc, ALC_SLD);
  if ((reg & (SLD_PROGRESS | SLD_START)) == 0)
   break;
  DELAY(1000);
 }
 if (i != 0) {
  CSR_WRITE_4(sc, ALC_SLD, reg | SLD_START);
  for (i = 100; i > 0; i--) {
   DELAY(1000);
   reg = CSR_READ_4(sc, ALC_SLD);
   if ((reg & SLD_START) == 0)
    break;
  }
  if (i != 0)
   reloaded++;
  else if (bootverbose)
   device_printf(sc->alc_dev,
       "reloading station address via TWSI timed out!\n");
 }


 if (reloaded == 0) {
  reg = CSR_READ_4(sc, ALC_EEPROM_LD);
  if ((reg & (EEPROM_LD_EEPROM_EXIST |
      EEPROM_LD_FLASH_EXIST)) != 0) {
   for (i = 100; i > 0; i--) {
    reg = CSR_READ_4(sc, ALC_EEPROM_LD);
    if ((reg & (EEPROM_LD_PROGRESS |
        EEPROM_LD_START)) == 0)
     break;
    DELAY(1000);
   }
   if (i != 0) {
    CSR_WRITE_4(sc, ALC_EEPROM_LD, reg |
        EEPROM_LD_START);
    for (i = 100; i > 0; i--) {
     DELAY(1000);
     reg = CSR_READ_4(sc, ALC_EEPROM_LD);
     if ((reg & EEPROM_LD_START) == 0)
      break;
    }
   } else if (bootverbose)
    device_printf(sc->alc_dev,
        "reloading EEPROM/FLASH timed out!\n");
  }
 }

 alc_get_macaddr_par(sc);
}
