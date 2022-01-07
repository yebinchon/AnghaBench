
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_ispcie; } ;


 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ath_hal_configPCIE (struct ath_hal*,int ,int ) ;
 int ath_hal_disablePCIE (struct ath_hal*) ;

void
ar5416AttachPCIE(struct ath_hal *ah)
{
 if (AH_PRIVATE(ah)->ah_ispcie)
  ath_hal_configPCIE(ah, AH_FALSE, AH_FALSE);
 else
  ath_hal_disablePCIE(ah);
}
