
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int* calFreqPier2G; int ** calPierData2G; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ HAL_EEPROM_9287 ;


 int AR9287_MAX_CHAINS ;
 int AR9287_NUM_2G_CAL_PIERS ;
 int eeprom_9287_print_caldata_oploop (void*) ;
 int printf (char*,...) ;

void
eeprom_9287_calfreqpiers_print(uint16_t *buf)
{
 HAL_EEPROM_9287 *eep = (HAL_EEPROM_9287 *) buf;
 int i, n;


 printf("calFreqPier2G: ");
 for (i = 0; i < AR9287_NUM_2G_CAL_PIERS; i++) {
  printf(" 0x%.2x ", eep->ee_base.calFreqPier2G[i]);
 }
 printf("|\n");

 for (i = 0; i < AR9287_NUM_2G_CAL_PIERS; i++) {
  if (eep->ee_base.calFreqPier2G[i] == 0xff)
   continue;
  printf("2Ghz Cal Pier %d\n", i);
  for (n = 0; n < AR9287_MAX_CHAINS; n++) {
   printf("  Chain %d:\n", n);
   eeprom_9287_print_caldata_oploop((void *)&eep->ee_base.calPierData2G[n][i]);
  }
 }

 printf("\n");
}
