
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int eeprom_size; } ;


 int fxp_eeprom_getword (struct fxp_softc*,int ,int) ;

__attribute__((used)) static void
fxp_autosize_eeprom(struct fxp_softc *sc)
{


 sc->eeprom_size = 8;


 (void) fxp_eeprom_getword(sc, 0, 1);
}
