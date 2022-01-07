
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nge_softc {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int nge_eeprom_getword (struct nge_softc*,int,int *) ;

__attribute__((used)) static void
nge_read_eeprom(struct nge_softc *sc, caddr_t dest, int off, int cnt)
{
 int i;
 uint16_t word = 0, *ptr;

 for (i = 0; i < cnt; i++) {
  nge_eeprom_getword(sc, off + i, &word);
  ptr = (uint16_t *)(dest + (i * 2));
  *ptr = word;
 }
}
