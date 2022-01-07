
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_coverageClass; int ah_curchan; } ;


 int ACK_CTS_TIMEOUT_11A ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_D_GBL_IFS_EIFS ;
 int AR_D_GBL_IFS_SLOT ;
 int AR_TIME_OUT ;
 int AR_TIME_OUT_ACK ;
 int AR_TIME_OUT_CTS ;
 int IEEE80211_IS_CHAN_A (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (int ) ;
 scalar_t__ IFS_EIFS_FULL_RATE ;
 scalar_t__ IFS_EIFS_HALF_RATE ;
 scalar_t__ IFS_EIFS_QUARTER_RATE ;
 scalar_t__ IFS_SLOT_FULL_RATE ;
 scalar_t__ IFS_SLOT_HALF_RATE ;
 scalar_t__ IFS_SLOT_QUARTER_RATE ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int ) ;
 int ath_hal_mac_clks (struct ath_hal*,int) ;

void
ar5212SetCoverageClass(struct ath_hal *ah, uint8_t coverageclass, int now)
{
 uint32_t slot, timeout, eifs;
 u_int clkRate;

 AH_PRIVATE(ah)->ah_coverageClass = coverageclass;

 if (now) {
  if (AH_PRIVATE(ah)->ah_coverageClass == 0)
   return;


  if (!IEEE80211_IS_CHAN_A(AH_PRIVATE(ah)->ah_curchan))
   return;


  clkRate = ath_hal_mac_clks(ah, 1);


  slot = coverageclass * 3 * clkRate;
  eifs = coverageclass * 6 * clkRate;
  if (IEEE80211_IS_CHAN_HALF(AH_PRIVATE(ah)->ah_curchan)) {
   slot += IFS_SLOT_HALF_RATE;
   eifs += IFS_EIFS_HALF_RATE;
  } else if (IEEE80211_IS_CHAN_QUARTER(AH_PRIVATE(ah)->ah_curchan)) {
   slot += IFS_SLOT_QUARTER_RATE;
   eifs += IFS_EIFS_QUARTER_RATE;
  } else {
   slot += IFS_SLOT_FULL_RATE;
   eifs += IFS_EIFS_FULL_RATE;
  }





  timeout = ACK_CTS_TIMEOUT_11A + (coverageclass * 3 * clkRate);




  OS_REG_WRITE(ah, AR_D_GBL_IFS_SLOT, slot);
  OS_REG_WRITE(ah, AR_D_GBL_IFS_EIFS, eifs);
  OS_REG_WRITE(ah, AR_TIME_OUT,
     SM(timeout, AR_TIME_OUT_CTS)
   | SM(timeout, AR_TIME_OUT_ACK));
 }
}
