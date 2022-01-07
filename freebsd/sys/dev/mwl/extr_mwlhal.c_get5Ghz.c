
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_channel {int freq; int ieee; int targetPowers; } ;
struct TYPE_3__ {int nchannels; int freqLow; int freqHigh; struct mwl_hal_channel* channels; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;


 int memcpy (int ,int const*,int) ;
 int setmaxtxpow (struct mwl_hal_channel*,int,int) ;

__attribute__((used)) static void
get5Ghz(MWL_HAL_CHANNELINFO *ci, const uint8_t table[], int len)
{
 int i, j, f, l, h;

 l = 32000;
 h = 0;
 j = 0;
 for (i = 0; i < len; i += 4) {
  struct mwl_hal_channel *hc;

  if (table[i] == 0)
   continue;
  f = 5000 + 5*table[i];
  if (f < l)
   l = f;
  if (f > h)
   h = f;
  hc = &ci->channels[j];
  hc->freq = f;
  hc->ieee = table[i];
  memcpy(hc->targetPowers, &table[i], 4);
  setmaxtxpow(hc, 1, 4);
  j++;
 }
 ci->nchannels = j;
 ci->freqLow = (l == 32000) ? 0 : l;
 ci->freqHigh = h;
}
