
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fxp_softc {int eeprom_size; } ;


 int CSR_READ_2 (struct fxp_softc*,int ) ;
 int CSR_WRITE_2 (struct fxp_softc*,int ,int ) ;
 int DELAY (int) ;
 int FXP_CSR_EEPROMCONTROL ;
 int FXP_EEPROM_EECS ;
 int FXP_EEPROM_EEDO ;
 int FXP_EEPROM_OPC_WRITE ;
 int fxp_eeprom_shiftin (struct fxp_softc*,int,int) ;

__attribute__((used)) static void
fxp_eeprom_putword(struct fxp_softc *sc, int offset, uint16_t data)
{
 int i;




 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
 fxp_eeprom_shiftin(sc, 0x4, 3);
 fxp_eeprom_shiftin(sc, 0x03 << (sc->eeprom_size - 2), sc->eeprom_size);
 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, 0);
 DELAY(1);



 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
 fxp_eeprom_shiftin(sc, FXP_EEPROM_OPC_WRITE, 3);
 fxp_eeprom_shiftin(sc, offset, sc->eeprom_size);
 fxp_eeprom_shiftin(sc, data, 16);
 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, 0);
 DELAY(1);



 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
 DELAY(1);
 for (i = 0; i < 1000; i++) {
  if (CSR_READ_2(sc, FXP_CSR_EEPROMCONTROL) & FXP_EEPROM_EEDO)
   break;
  DELAY(50);
 }
 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, 0);
 DELAY(1);



 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
 fxp_eeprom_shiftin(sc, 0x4, 3);
 fxp_eeprom_shiftin(sc, 0, sc->eeprom_size);
 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, 0);
 DELAY(1);
}
