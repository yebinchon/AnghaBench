
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ah_eeprom; } ;
struct TYPE_6__ {int version; int antdiv_ctl1; } ;
struct TYPE_5__ {TYPE_2__ modalHeader; } ;
struct TYPE_7__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ MODAL_EEP4K_HEADER ;
typedef TYPE_3__ HAL_EEPROM_v4k ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_4__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_SREV_KITE (struct ath_hal*) ;

HAL_BOOL
ar9285_check_div_comb(struct ath_hal *ah)
{
 uint8_t ant_div_ctl1;
 HAL_EEPROM_v4k *ee = AH_PRIVATE(ah)->ah_eeprom;
        const MODAL_EEP4K_HEADER *pModal = &ee->ee_base.modalHeader;






 if (! AR_SREV_KITE(ah))
  return AH_FALSE;

 if (pModal->version < 3)
  return AH_FALSE;

 ant_div_ctl1 = pModal->antdiv_ctl1;
 if ((ant_div_ctl1 & 0x1) && ((ant_div_ctl1 >> 3) & 0x1))
  return AH_TRUE;

 return AH_FALSE;
}
