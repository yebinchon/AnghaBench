
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dc_softc {int dummy; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ DC_IS_PNIC (struct dc_softc*) ;
 scalar_t__ DC_IS_XIRCOM (struct dc_softc*) ;
 int be16toh (int ) ;
 int dc_eeprom_getword (struct dc_softc*,int,int *) ;
 int dc_eeprom_getword_pnic (struct dc_softc*,int,int *) ;
 int dc_eeprom_getword_xircom (struct dc_softc*,int,int *) ;
 int le16toh (int ) ;

__attribute__((used)) static void
dc_read_eeprom(struct dc_softc *sc, caddr_t dest, int off, int cnt, int be)
{
 int i;
 uint16_t word = 0, *ptr;

 for (i = 0; i < cnt; i++) {
  if (DC_IS_PNIC(sc))
   dc_eeprom_getword_pnic(sc, off + i, &word);
  else if (DC_IS_XIRCOM(sc))
   dc_eeprom_getword_xircom(sc, off + i, &word);
  else
   dc_eeprom_getword(sc, off + i, &word);
  ptr = (uint16_t *)(dest + (i * 2));
  if (be)
   *ptr = be16toh(word);
  else
   *ptr = le16toh(word);
 }
}
