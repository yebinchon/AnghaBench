
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct seeprom_config {int checksum; } ;



int
ahd_verify_cksum(struct seeprom_config *sc)
{
 int i;
 int maxaddr;
 uint32_t checksum;
 uint16_t *scarray;

 maxaddr = (sizeof(*sc)/2) - 1;
 checksum = 0;
 scarray = (uint16_t *)sc;

 for (i = 0; i < maxaddr; i++)
  checksum = checksum + scarray[i];
 if (checksum == 0
  || (checksum & 0xFFFF) != sc->checksum) {
  return (0);
 } else {
  return (1);
 }
}
