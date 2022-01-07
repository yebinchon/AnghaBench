
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int custData; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ HAL_EEPROM_v4k ;


 int printf (char*,...) ;

void
eeprom_v4k_custdata_print(uint16_t *buf)
{
 HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
 uint8_t *custdata = (uint8_t *) &eep->ee_base.custData;
 int i;

 printf("\n| Custdata:                                       |\n");
 for (i = 0; i < 20; i++) {
  printf("%s0x%.2x %s",
      i % 16 == 0 ? "| " : "",
      custdata[i],
      i % 16 == 15 ? "|\n" : "");
 }
 printf("\n");
}
