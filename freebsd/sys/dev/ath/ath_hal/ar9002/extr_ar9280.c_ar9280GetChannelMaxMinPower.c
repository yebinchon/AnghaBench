
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_channel {scalar_t__ channel; } ;
struct ath_hal_5212 {TYPE_2__* ah_modePowerArray5112; } ;
struct ath_hal {int dummy; } ;
typedef int int8_t ;
typedef int int16_t ;
struct TYPE_5__ {int numChannels; TYPE_1__* pDataPerChannel; } ;
struct TYPE_4__ {scalar_t__ channelValue; int maxPower_t4; } ;
typedef int HAL_BOOL ;
typedef TYPE_1__ EXPN_DATA_PER_CHANNEL_5112 ;
typedef TYPE_2__ EEPROM_POWER_EXPN_5112 ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 void* AH_NULL ;
 int AH_TRUE ;
 scalar_t__ IS_CHAN_108G (struct ieee80211_channel const*) ;
 scalar_t__ IS_CHAN_A (struct ieee80211_channel const*) ;
 scalar_t__ IS_CHAN_B (struct ieee80211_channel const*) ;
 scalar_t__ IS_CHAN_G (struct ieee80211_channel const*) ;
 int ar9280GetMinPower (struct ath_hal*,TYPE_1__*) ;
 size_t headerInfo11A ;
 size_t headerInfo11B ;
 size_t headerInfo11G ;

__attribute__((used)) static HAL_BOOL
ar9280GetChannelMaxMinPower(struct ath_hal *ah,
 const struct ieee80211_channel *chan,
 int16_t *maxPow, int16_t *minPow)
{
 *maxPow = *minPow = 0;
 return AH_FALSE;

}
