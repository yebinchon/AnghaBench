
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY (int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_gethwchannel (struct ath_hal*,struct ieee80211_channel*) ;
 int ath_hal_reverseBits (int,int) ;

__attribute__((used)) static HAL_BOOL
ar5210SetChannel(struct ath_hal *ah, struct ieee80211_channel *chan)
{
 uint16_t freq = ath_hal_gethwchannel(ah, chan);
 uint32_t data;


 data = ath_hal_reverseBits((freq - 5120)/10, 5);
 data = (data << 1) | 0x41;
 OS_REG_WRITE(ah, AR_PHY(0x27), data);
 OS_REG_WRITE(ah, AR_PHY(0x30), 0);
 AH_PRIVATE(ah)->ah_curchan = chan;
 return AH_TRUE;
}
