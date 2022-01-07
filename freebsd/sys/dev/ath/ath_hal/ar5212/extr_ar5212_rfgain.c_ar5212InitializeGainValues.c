
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t currStepNum; int loTrig; int hiTrig; void* active; int * currStep; } ;
struct ath_hal_5212 {TYPE_1__ ah_gainValues; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {size_t defaultStepNum; int * optStep; } ;
struct TYPE_5__ {size_t defaultStepNum; int * optStep; } ;
typedef TYPE_1__ GAIN_VALUES ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 void* AH_TRUE ;
 scalar_t__ IS_RAD5112_ANY (struct ath_hal*) ;
 TYPE_3__ gainLadder ;
 TYPE_2__ gainLadder5112 ;

void
ar5212InitializeGainValues(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 GAIN_VALUES *gv = &ahp->ah_gainValues;


 if (IS_RAD5112_ANY(ah)) {
  gv->currStepNum = gainLadder5112.defaultStepNum;
  gv->currStep =
   &gainLadder5112.optStep[gainLadder5112.defaultStepNum];
  gv->active = AH_TRUE;
  gv->loTrig = 20;
  gv->hiTrig = 85;
 } else {
  gv->currStepNum = gainLadder.defaultStepNum;
  gv->currStep = &gainLadder.optStep[gainLadder.defaultStepNum];
  gv->active = AH_TRUE;
  gv->loTrig = 20;
  gv->hiTrig = 35;
 }
}
