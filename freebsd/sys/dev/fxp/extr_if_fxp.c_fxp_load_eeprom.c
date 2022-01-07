
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct fxp_softc {scalar_t__* eeprom; int eeprom_size; int dev; } ;


 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 int fxp_read_eeprom (struct fxp_softc*,scalar_t__*,int ,int) ;

__attribute__((used)) static void
fxp_load_eeprom(struct fxp_softc *sc)
{
 int i;
 uint16_t cksum;

 fxp_read_eeprom(sc, sc->eeprom, 0, 1 << sc->eeprom_size);
 cksum = 0;
 for (i = 0; i < (1 << sc->eeprom_size) - 1; i++)
  cksum += sc->eeprom[i];
 cksum = 0xBABA - cksum;
 if (cksum != sc->eeprom[(1 << sc->eeprom_size) - 1])
  device_printf(sc->dev,
      "EEPROM checksum mismatch! (0x%04x -> 0x%04x)\n",
      cksum, sc->eeprom[(1 << sc->eeprom_size) - 1]);
}
