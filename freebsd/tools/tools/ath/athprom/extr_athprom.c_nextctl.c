
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ee_numCtls; int* ee_ctl; } ;


 int curmode ;
 TYPE_1__ eeprom ;
 int headerInfo11A ;
 int headerInfo11B ;
 int headerInfo11G ;

int
nextctl(int start)
{
 int i;

 for (i = start; i < eeprom.ee_numCtls && eeprom.ee_ctl[i]; i++) {
  switch (eeprom.ee_ctl[i] & 3) {
  case 0: case 3:
   if (curmode != headerInfo11A)
    continue;
   break;
  case 1:
   if (curmode != headerInfo11B)
    continue;
   break;
  case 2:
   if (curmode != headerInfo11G)
    continue;
   break;
  }
  return i;
 }
 return -1;
}
