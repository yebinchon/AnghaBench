
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ currGain; scalar_t__ loTrig; scalar_t__ hiTrig; } ;
typedef int HAL_BOOL ;
typedef TYPE_1__ GAIN_VALUES ;



__attribute__((used)) static HAL_BOOL
ar5212IsGainAdjustNeeded(struct ath_hal *ah, const GAIN_VALUES *gv)
{
 return (gv->currGain <= gv->loTrig || gv->currGain >= gv->hiTrig);
}
