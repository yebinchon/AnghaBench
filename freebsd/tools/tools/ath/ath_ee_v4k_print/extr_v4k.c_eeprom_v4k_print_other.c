
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ee_antennaGainMax; } ;
typedef TYPE_1__ HAL_EEPROM_v4k ;


 int printf (char*,int) ;

void
eeprom_v4k_print_other(uint16_t *buf)
{
 HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
 printf("| ee_antennaGainMax: %.2x\n", eep->ee_antennaGainMax);
}
