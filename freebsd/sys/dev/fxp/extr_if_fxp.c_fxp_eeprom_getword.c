
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fxp_softc {int eeprom_size; } ;


 int CSR_READ_2 (struct fxp_softc*,int ) ;
 int CSR_WRITE_2 (struct fxp_softc*,int ,int) ;
 int DELAY (int) ;
 int FXP_CSR_EEPROMCONTROL ;
 int FXP_EEPROM_EECS ;
 int FXP_EEPROM_EEDI ;
 int FXP_EEPROM_EEDO ;
 int FXP_EEPROM_EESK ;
 int FXP_EEPROM_OPC_READ ;
 int fxp_eeprom_shiftin (struct fxp_softc*,int ,int) ;

__attribute__((used)) static uint16_t
fxp_eeprom_getword(struct fxp_softc *sc, int offset, int autosize)
{
 uint16_t reg, data;
 int x;

 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);



 fxp_eeprom_shiftin(sc, FXP_EEPROM_OPC_READ, 3);



 data = 0;
 for (x = 1 << (sc->eeprom_size - 1); x; x >>= 1) {
  if (offset & x)
   reg = FXP_EEPROM_EECS | FXP_EEPROM_EEDI;
  else
   reg = FXP_EEPROM_EECS;
  CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, reg);
  DELAY(1);
  CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, reg | FXP_EEPROM_EESK);
  DELAY(1);
  CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, reg);
  DELAY(1);
  reg = CSR_READ_2(sc, FXP_CSR_EEPROMCONTROL) & FXP_EEPROM_EEDO;
  data++;
  if (autosize && reg == 0) {
   sc->eeprom_size = data;
   break;
  }
 }



 data = 0;
 reg = FXP_EEPROM_EECS;
 for (x = 1 << 15; x; x >>= 1) {
  CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, reg | FXP_EEPROM_EESK);
  DELAY(1);
  if (CSR_READ_2(sc, FXP_CSR_EEPROMCONTROL) & FXP_EEPROM_EEDO)
   data |= x;
  CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, reg);
  DELAY(1);
 }
 CSR_WRITE_2(sc, FXP_CSR_EEPROMCONTROL, 0);
 DELAY(1);

 return (data);
}
