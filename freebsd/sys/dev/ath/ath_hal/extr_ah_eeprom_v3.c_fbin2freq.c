
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ ee_version; } ;
typedef TYPE_1__ HAL_EEPROM ;


 scalar_t__ AR_EEPROM_VER3_2 ;
 int CHANNEL_UNUSED ;

__attribute__((used)) static uint16_t
fbin2freq(HAL_EEPROM *ee, uint16_t fbin)
{
 if (fbin == CHANNEL_UNUSED)
  return fbin;
 return ee->ee_version <= AR_EEPROM_VER3_2 ?
  (fbin > 62 ? 5100 + 10*62 + 5*(fbin-62) : 5100 + 10*fbin) :
  4800 + 5*fbin;
}
