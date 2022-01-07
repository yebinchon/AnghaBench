
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;

__attribute__((used)) static HAL_BOOL
ar9280SetRfRegs(struct ath_hal *ah, const struct ieee80211_channel *chan,
                uint16_t modesIndex, uint16_t *rfXpdGain)
{
 return AH_TRUE;
}
