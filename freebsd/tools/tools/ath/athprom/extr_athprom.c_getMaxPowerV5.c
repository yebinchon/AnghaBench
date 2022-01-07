
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* pDataPerPDGain; } ;
struct TYPE_4__ {int numVpd; int * pwr_t4; } ;
typedef TYPE_2__ RAW_DATA_PER_CHANNEL_2413 ;


 size_t MAX_NUM_PDGAINS_PER_CHANNEL ;

__attribute__((used)) static int16_t
getMaxPowerV5(const RAW_DATA_PER_CHANNEL_2413 *data)
{
 uint32_t i;
 uint16_t numVpd;

 for (i = 0; i < MAX_NUM_PDGAINS_PER_CHANNEL; i++) {
  numVpd = data->pDataPerPDGain[i].numVpd;
  if (numVpd > 0)
   return data->pDataPerPDGain[i].pwr_t4[numVpd-1];
 }
 return 0;
}
