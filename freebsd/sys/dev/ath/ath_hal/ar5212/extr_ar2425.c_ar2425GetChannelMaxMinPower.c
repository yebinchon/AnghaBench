
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct ieee80211_channel {int ic_freq; } ;
struct ath_hal {int dummy; } ;
typedef int int8_t ;
typedef int int16_t ;
struct TYPE_10__ {TYPE_3__* ah_eeprom; } ;
struct TYPE_9__ {TYPE_1__* ee_rawDataset2413; } ;
struct TYPE_8__ {int channelValue; } ;
struct TYPE_7__ {int numChannels; TYPE_2__* pDataPerChannel; } ;
typedef TYPE_1__ RAW_DATA_STRUCT_2413 ;
typedef TYPE_2__ RAW_DATA_PER_CHANNEL_2413 ;
typedef TYPE_3__ HAL_EEPROM ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 void* AH_NULL ;
 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 scalar_t__ IEEE80211_IS_CHAN_108G (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_G (struct ieee80211_channel const*) ;
 int ar2425GetMaxPower (struct ath_hal*,TYPE_2__ const*) ;
 int ar2425GetMinPower (struct ath_hal*,TYPE_2__ const*) ;
 size_t headerInfo11B ;
 size_t headerInfo11G ;

__attribute__((used)) static
HAL_BOOL
ar2425GetChannelMaxMinPower(struct ath_hal *ah,
 const struct ieee80211_channel *chan,
 int16_t *maxPow, int16_t *minPow)
{
 uint16_t freq = chan->ic_freq;
 const HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;
 const RAW_DATA_STRUCT_2413 *pRawDataset = AH_NULL;
 const RAW_DATA_PER_CHANNEL_2413 *data = AH_NULL;
 uint16_t numChannels;
 int totalD,totalF, totalMin,last, i;

 *maxPow = 0;

 if (IEEE80211_IS_CHAN_G(chan) || IEEE80211_IS_CHAN_108G(chan))
  pRawDataset = &ee->ee_rawDataset2413[headerInfo11G];
 else if (IEEE80211_IS_CHAN_B(chan))
  pRawDataset = &ee->ee_rawDataset2413[headerInfo11B];
 else
  return(AH_FALSE);

 numChannels = pRawDataset->numChannels;
 data = pRawDataset->pDataPerChannel;




 if (numChannels < 1)
  return(AH_FALSE);

 if ((freq < data[0].channelValue) ||
     (freq > data[numChannels-1].channelValue)) {
  if (freq < data[0].channelValue) {
   *maxPow = ar2425GetMaxPower(ah, &data[0]);
   *minPow = ar2425GetMinPower(ah, &data[0]);
   return(AH_TRUE);
  } else {
   *maxPow = ar2425GetMaxPower(ah, &data[numChannels - 1]);
   *minPow = ar2425GetMinPower(ah, &data[numChannels - 1]);
   return(AH_TRUE);
  }
 }


 for (last=0,i=0; (i<numChannels) && (freq > data[i].channelValue);
      last = i++);
 totalD = data[i].channelValue - data[last].channelValue;
 if (totalD > 0) {
  totalF = ar2425GetMaxPower(ah, &data[i]) - ar2425GetMaxPower(ah, &data[last]);
  *maxPow = (int8_t) ((totalF*(freq-data[last].channelValue) +
         ar2425GetMaxPower(ah, &data[last])*totalD)/totalD);
  totalMin = ar2425GetMinPower(ah, &data[i]) - ar2425GetMinPower(ah, &data[last]);
  *minPow = (int8_t) ((totalMin*(freq-data[last].channelValue) +
         ar2425GetMinPower(ah, &data[last])*totalD)/totalD);
  return(AH_TRUE);
 } else {
  if (freq == data[i].channelValue) {
   *maxPow = ar2425GetMaxPower(ah, &data[i]);
   *minPow = ar2425GetMinPower(ah, &data[i]);
   return(AH_TRUE);
  } else
   return(AH_FALSE);
 }
}
