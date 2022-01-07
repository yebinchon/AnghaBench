
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct ath_hal_5212 {int ah_miscMode; scalar_t__ ah_sifstime; scalar_t__ ah_slottime; scalar_t__ ah_acktimeout; scalar_t__ ah_ctstimeout; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {scalar_t__ ah_globaltxtimeout; } ;
struct TYPE_3__ {int ah_diagreg; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH5416 (struct ath_hal*) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_DIAG_SW ;
 int AR_MISC_MODE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5212SetAckTimeout (struct ath_hal*,scalar_t__) ;
 int ar5212SetCTSTimeout (struct ath_hal*,scalar_t__) ;
 int ar5212SetSifsTime (struct ath_hal*,scalar_t__) ;
 int ar5212SetSlotTime (struct ath_hal*,scalar_t__) ;
 int ar5416SetGlobalTxTimeout (struct ath_hal*,scalar_t__) ;

__attribute__((used)) static void
ar5416InitUserSettings(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);


 if (ahp->ah_miscMode != 0)
  OS_REG_WRITE(ah, AR_MISC_MODE, OS_REG_READ(ah, AR_MISC_MODE)
      | ahp->ah_miscMode);
 if (ahp->ah_sifstime != (u_int) -1)
  ar5212SetSifsTime(ah, ahp->ah_sifstime);
 if (ahp->ah_slottime != (u_int) -1)
  ar5212SetSlotTime(ah, ahp->ah_slottime);
 if (ahp->ah_acktimeout != (u_int) -1)
  ar5212SetAckTimeout(ah, ahp->ah_acktimeout);
 if (ahp->ah_ctstimeout != (u_int) -1)
  ar5212SetCTSTimeout(ah, ahp->ah_ctstimeout);
 if (AH_PRIVATE(ah)->ah_diagreg != 0)
  OS_REG_WRITE(ah, AR_DIAG_SW, AH_PRIVATE(ah)->ah_diagreg);
 if (AH5416(ah)->ah_globaltxtimeout != (u_int) -1)
         ar5416SetGlobalTxTimeout(ah, AH5416(ah)->ah_globaltxtimeout);
}
