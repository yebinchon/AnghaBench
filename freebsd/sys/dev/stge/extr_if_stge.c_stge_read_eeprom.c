
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct stge_softc {int sc_dev; } ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int) ;
 int EC_EepromAddress (int) ;
 int EC_EepromOpcode (int ) ;
 int EC_OP_RR ;
 int STGE_EepromCtrl ;
 int STGE_EepromData ;
 int device_printf (int ,char*) ;
 scalar_t__ stge_eeprom_wait (struct stge_softc*) ;

__attribute__((used)) static void
stge_read_eeprom(struct stge_softc *sc, int offset, uint16_t *data)
{

 if (stge_eeprom_wait(sc))
  device_printf(sc->sc_dev, "EEPROM failed to come ready\n");

 CSR_WRITE_2(sc, STGE_EepromCtrl,
     EC_EepromAddress(offset) | EC_EepromOpcode(EC_OP_RR));
 if (stge_eeprom_wait(sc))
  device_printf(sc->sc_dev, "EEPROM read timed out\n");
 *data = CSR_READ_2(sc, STGE_EepromData);
}
