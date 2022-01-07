
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_channel {scalar_t__ maxTxPow; scalar_t__* targetPowers; } ;



__attribute__((used)) static void
setmaxtxpow(struct mwl_hal_channel *hc, int i, int maxix)
{
 hc->maxTxPow = hc->targetPowers[i];
 for (i++; i < maxix; i++)
  if (hc->targetPowers[i] > hc->maxTxPow)
   hc->maxTxPow = hc->targetPowers[i];
}
