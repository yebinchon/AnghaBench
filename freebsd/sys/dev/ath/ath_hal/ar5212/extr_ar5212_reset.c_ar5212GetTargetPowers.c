
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int testChannel; void* twicePwr54; void* twicePwr48; void* twicePwr36; void* twicePwr6_24; } ;
typedef TYPE_1__ TRGT_POWER_INFO ;


 int NUM_TEST_FREQUENCIES ;
 int ar5212GetLowerUpperValues (int,int*,int,int*,int*) ;
 int ath_hal_gethwchannel (struct ath_hal*,struct ieee80211_channel const*) ;
 void* interpolate (int,int,int,void*,void*) ;

__attribute__((used)) static void
ar5212GetTargetPowers(struct ath_hal *ah, const struct ieee80211_channel *chan,
 const TRGT_POWER_INFO *powInfo,
 uint16_t numChannels, TRGT_POWER_INFO *pNewPower)
{
 uint16_t freq = ath_hal_gethwchannel(ah, chan);

 uint16_t tempChannelList[NUM_TEST_FREQUENCIES];
 uint16_t clo, chi, ixlo, ixhi;
 int i;


 for (i = 0; i < numChannels; i++)
  tempChannelList[i] = powInfo[i].testChannel;

 ar5212GetLowerUpperValues(freq, tempChannelList,
  numChannels, &clo, &chi);


 ixlo = ixhi = 0;
 for (i = 0; i < numChannels; i++) {
  if (clo == tempChannelList[i]) {
   ixlo = i;
  }
  if (chi == tempChannelList[i]) {
   ixhi = i;
   break;
  }
 }





 pNewPower->twicePwr6_24 = interpolate(freq, clo, chi,
  powInfo[ixlo].twicePwr6_24, powInfo[ixhi].twicePwr6_24);
 pNewPower->twicePwr36 = interpolate(freq, clo, chi,
  powInfo[ixlo].twicePwr36, powInfo[ixhi].twicePwr36);
 pNewPower->twicePwr48 = interpolate(freq, clo, chi,
  powInfo[ixlo].twicePwr48, powInfo[ixhi].twicePwr48);
 pNewPower->twicePwr54 = interpolate(freq, clo, chi,
  powInfo[ixlo].twicePwr54, powInfo[ixhi].twicePwr54);
}
