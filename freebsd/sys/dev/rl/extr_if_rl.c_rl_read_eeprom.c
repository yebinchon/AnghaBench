
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rl_softc {int dummy; } ;


 int ntohs (int ) ;
 int rl_eeprom_getword (struct rl_softc*,int,int *) ;

__attribute__((used)) static void
rl_read_eeprom(struct rl_softc *sc, uint8_t *dest, int off, int cnt, int swap)
{
 int i;
 uint16_t word = 0, *ptr;

 for (i = 0; i < cnt; i++) {
  rl_eeprom_getword(sc, off + i, &word);
  ptr = (uint16_t *)(dest + (i * 2));
  if (swap)
   *ptr = ntohs(word);
  else
   *ptr = word;
 }
}
