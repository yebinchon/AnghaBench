
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_opmode; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ar5211SetOperatingMode (struct ath_hal*,int ) ;

void
ar5211SetPCUConfig(struct ath_hal *ah)
{
 ar5211SetOperatingMode(ah, AH_PRIVATE(ah)->ah_opmode);
}
