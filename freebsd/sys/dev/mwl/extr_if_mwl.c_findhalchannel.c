
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mwl_hal_channel {int ieee; } ;
struct TYPE_3__ {int nchannels; struct mwl_hal_channel* channels; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;



__attribute__((used)) static const struct mwl_hal_channel *
findhalchannel(const MWL_HAL_CHANNELINFO *ci, int ieee)
{
 int i;

 for (i = 0; i < ci->nchannels; i++) {
  const struct mwl_hal_channel *hc = &ci->channels[i];
  if (hc->ieee == ieee)
   return hc;
 }
 return ((void*)0);
}
