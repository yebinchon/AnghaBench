
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t currStepNum; int loTrig; int hiTrig; int active; int * currStep; } ;
struct ath_hal_5211 {TYPE_1__ ah_gainValues; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {size_t defaultStepNum; int * optStep; } ;
typedef TYPE_1__ GAIN_VALUES ;


 struct ath_hal_5211* AH5211 (struct ath_hal*) ;
 int AH_TRUE ;
 TYPE_2__ gainLadder ;

void
ar5211InitializeGainValues(struct ath_hal *ah)
{
 struct ath_hal_5211 *ahp = AH5211(ah);
 GAIN_VALUES *gv = &ahp->ah_gainValues;


 gv->currStepNum = gainLadder.defaultStepNum;
 gv->currStep = &gainLadder.optStep[gainLadder.defaultStepNum];
 gv->active = AH_TRUE;
 gv->loTrig = 20;
 gv->hiTrig = 35;
}
