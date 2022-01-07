
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int skipcount; } ;
struct TYPE_4__ {TYPE_1__ pacal_info; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_2__* AH9285 (struct ath_hal*) ;
 scalar_t__ AR_SREV_KITE_11_OR_LATER (struct ath_hal*) ;
 int ar9285_hw_pa_cal (struct ath_hal*,scalar_t__) ;

void
ar9002_hw_pa_cal(struct ath_hal *ah, HAL_BOOL is_reset)
{
 if (AR_SREV_KITE_11_OR_LATER(ah)) {
  if (is_reset || !AH9285(ah)->pacal_info.skipcount)
   ar9285_hw_pa_cal(ah, is_reset);
  else
   AH9285(ah)->pacal_info.skipcount--;
 }
}
