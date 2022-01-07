
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ti_softc {int dummy; } ;
typedef int * caddr_t ;


 int ti_eeprom_getbyte (struct ti_softc*,int,int *) ;

__attribute__((used)) static int
ti_read_eeprom(struct ti_softc *sc, caddr_t dest, int off, int cnt)
{
 int err = 0, i;
 uint8_t byte = 0;

 for (i = 0; i < cnt; i++) {
  err = ti_eeprom_getbyte(sc, off + i, &byte);
  if (err)
   break;
  *(dest + i) = byte;
 }

 return (err ? 1 : 0);
}
