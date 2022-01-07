
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int * calTargetPower2GHT40; int * calTargetPower2GHT20; int * calTargetPower2G; int * calTargetPowerCck; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ HAL_EEPROM_v4k ;


 int AR5416_4K_NUM_2G_20_TARGET_POWERS ;
 int AR5416_4K_NUM_2G_40_TARGET_POWERS ;
 int AR5416_4K_NUM_2G_CCK_TARGET_POWERS ;
 int eeprom_v14_target_ht_print (int *) ;
 int eeprom_v14_target_legacy_print (int *) ;
 int printf (char*) ;

void
eeprom_v4k_print_targets(uint16_t *buf)
{
 HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
 int i;


 printf("2Ghz CCK:\n");
 for (i = 0; i < AR5416_4K_NUM_2G_CCK_TARGET_POWERS; i++) {
  eeprom_v14_target_legacy_print(&eep->ee_base.calTargetPowerCck[i]);
 }
 printf("2Ghz 11g:\n");
 for (i = 0; i < AR5416_4K_NUM_2G_20_TARGET_POWERS; i++) {
  eeprom_v14_target_legacy_print(&eep->ee_base.calTargetPower2G[i]);
 }
 printf("2Ghz HT20:\n");
 for (i = 0; i < AR5416_4K_NUM_2G_20_TARGET_POWERS; i++) {
  eeprom_v14_target_ht_print(&eep->ee_base.calTargetPower2GHT20[i]);
 }
 printf("2Ghz HT40:\n");
 for (i = 0; i < AR5416_4K_NUM_2G_40_TARGET_POWERS; i++) {
  eeprom_v14_target_ht_print(&eep->ee_base.calTargetPower2GHT40[i]);
 }

}
