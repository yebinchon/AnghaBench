
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sis_softc {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int ntohs (int ) ;
 int sis_eeprom_getword (struct sis_softc*,int,int *) ;

__attribute__((used)) static void
sis_read_eeprom(struct sis_softc *sc, caddr_t dest, int off, int cnt, int swap)
{
 int i;
 uint16_t word = 0, *ptr;

 for (i = 0; i < cnt; i++) {
  sis_eeprom_getword(sc, off + i, &word);
  ptr = (uint16_t *)(dest + (i * 2));
  if (swap)
   *ptr = ntohs(word);
  else
   *ptr = word;
 }
}
