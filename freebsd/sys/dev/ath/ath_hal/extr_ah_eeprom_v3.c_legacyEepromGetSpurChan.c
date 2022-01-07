
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_3__ {int ** ee_spurChans; } ;
typedef TYPE_1__ HAL_EEPROM ;
typedef size_t HAL_BOOL ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_EEPROM_MODAL_SPURS ;
 int HALASSERT (int) ;

__attribute__((used)) static uint16_t
legacyEepromGetSpurChan(struct ath_hal *ah, int ix, HAL_BOOL is2GHz)
{
 HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;

 HALASSERT(0 <= ix && ix < AR_EEPROM_MODAL_SPURS);
 return ee->ee_spurChans[ix][is2GHz];
}
