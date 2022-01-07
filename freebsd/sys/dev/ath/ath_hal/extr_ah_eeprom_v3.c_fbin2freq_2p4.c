
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ ee_version; } ;
typedef TYPE_1__ HAL_EEPROM ;


 scalar_t__ AR_EEPROM_VER3_2 ;
 scalar_t__ CHANNEL_UNUSED ;

__attribute__((used)) static uint16_t
fbin2freq_2p4(HAL_EEPROM *ee, uint16_t fbin)
{
 if (fbin == CHANNEL_UNUSED)
  return fbin;
 return ee->ee_version <= AR_EEPROM_VER3_2 ?
  2400 + fbin :
  2300 + fbin;
}
