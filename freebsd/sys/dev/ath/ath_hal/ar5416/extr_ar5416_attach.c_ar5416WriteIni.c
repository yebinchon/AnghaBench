
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ah_rfHal; int ah_ini_common; int ah_ini_modes; } ;
struct TYPE_5__ {int ah_ini_addac; } ;
struct TYPE_4__ {int (* writeRegs ) (struct ath_hal*,int,int,int) ;} ;


 TYPE_3__* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH5416 (struct ath_hal*) ;
 int AR_PHY (int ) ;
 int AR_PHY_ADC_SERIAL_CTL ;
 int AR_PHY_SEL_EXTERNAL_RADIO ;
 int AR_PHY_SEL_INTERNAL_ADDAC ;
 scalar_t__ AR_SREV_SOWL (struct ath_hal*) ;
 scalar_t__ IEEE80211_IS_CHAN_108G (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5416EepromSetAddac (struct ath_hal*,struct ieee80211_channel const*) ;
 int ath_hal_ini_write (struct ath_hal*,int *,int,int) ;
 int stub1 (struct ath_hal*,int,int,int) ;

__attribute__((used)) static void
ar5416WriteIni(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 u_int modesIndex, freqIndex;
 int regWrites = 0;



 if (IEEE80211_IS_CHAN_2GHZ(chan)) {
  freqIndex = 2;
  if (IEEE80211_IS_CHAN_HT40(chan))
   modesIndex = 3;
  else if (IEEE80211_IS_CHAN_108G(chan))
   modesIndex = 5;
  else
   modesIndex = 4;
 } else {
  freqIndex = 1;
  if (IEEE80211_IS_CHAN_HT40(chan) ||
      IEEE80211_IS_CHAN_TURBO(chan))
   modesIndex = 2;
  else
   modesIndex = 1;
 }


 OS_REG_WRITE(ah, AR_PHY(0), 0x00000007);




 OS_REG_WRITE(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_EXTERNAL_RADIO);


 if (AR_SREV_SOWL(ah))
  ar5416EepromSetAddac(ah, chan);

 regWrites = ath_hal_ini_write(ah, &AH5416(ah)->ah_ini_addac, 1,
     regWrites);
 OS_REG_WRITE(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_INTERNAL_ADDAC);

 regWrites = ath_hal_ini_write(ah, &AH5212(ah)->ah_ini_modes,
     modesIndex, regWrites);
 regWrites = ath_hal_ini_write(ah, &AH5212(ah)->ah_ini_common,
     1, regWrites);


 AH5212(ah)->ah_rfHal->writeRegs(ah, modesIndex, freqIndex, regWrites);
}
