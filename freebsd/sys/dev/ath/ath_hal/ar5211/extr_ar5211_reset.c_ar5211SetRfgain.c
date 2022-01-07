
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_11__ {TYPE_3__* ah_eeprom; } ;
struct TYPE_10__ {TYPE_2__* currStep; int active; } ;
struct TYPE_7__ {int gSel; int pd84; int pd90; int clip; } ;
struct TYPE_9__ {TYPE_1__ ee_cornerCal; } ;
struct TYPE_8__ {int * paramVal; } ;
typedef TYPE_3__ HAL_EEPROM ;
typedef TYPE_4__ GAIN_VALUES ;


 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;

__attribute__((used)) static void
ar5211SetRfgain(struct ath_hal *ah, const GAIN_VALUES *gv)
{
 HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;

 if (!gv->active)
  return;
 ee->ee_cornerCal.clip = gv->currStep->paramVal[0];
 ee->ee_cornerCal.pd90 = gv->currStep->paramVal[1];
 ee->ee_cornerCal.pd84 = gv->currStep->paramVal[2];
 ee->ee_cornerCal.gSel = gv->currStep->paramVal[3];
}
