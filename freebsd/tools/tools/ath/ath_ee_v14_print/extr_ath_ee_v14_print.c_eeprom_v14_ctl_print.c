
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__* ctlIndex; int * ctlData; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ HAL_EEPROM_v14 ;


 int AR5416_NUM_CTLS ;
 int eeprom_v14_ctl_edge_print (int *) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
eeprom_v14_ctl_print(uint16_t *buf)
{
 HAL_EEPROM_v14 *eep = (HAL_EEPROM_v14 *) buf;
 int i;

 for (i = 0; i < AR5416_NUM_CTLS; i++) {
  if (eep->ee_base.ctlIndex[i] == 0)
   continue;
  printf("| ctlIndex: offset %d, value %d\n", i, eep->ee_base.ctlIndex[i]);
  eeprom_v14_ctl_edge_print(&eep->ee_base.ctlData[i]);
 }
}
