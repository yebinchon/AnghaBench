
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_channel {int ieee; int targetPowers; void* freq; } ;
struct TYPE_3__ {int nchannels; void* freqHigh; void* freqLow; struct mwl_hal_channel* channels; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;


 void* ieee2mhz (int) ;
 int memcpy (int ,int const*,int) ;
 int setmaxtxpow (struct mwl_hal_channel*,int ,int) ;

__attribute__((used)) static void
get2Ghz(MWL_HAL_CHANNELINFO *ci, const uint8_t table[], int len)
{
 int i, j;

 j = 0;
 for (i = 0; i < len; i += 4) {
  struct mwl_hal_channel *hc = &ci->channels[j];
  hc->ieee = 1+j;
  hc->freq = ieee2mhz(1+j);
  memcpy(hc->targetPowers, &table[i], 4);
  setmaxtxpow(hc, 0, 4);
  j++;
 }
 ci->nchannels = j;
 ci->freqLow = ieee2mhz(1);
 ci->freqHigh = ieee2mhz(j);
}
