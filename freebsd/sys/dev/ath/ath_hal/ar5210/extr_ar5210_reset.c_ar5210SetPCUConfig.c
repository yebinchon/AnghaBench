
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_opmode; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ar5210SetOperatingMode (struct ath_hal*,int ) ;

void
ar5210SetPCUConfig(struct ath_hal *ah)
{
 ar5210SetOperatingMode(ah, AH_PRIVATE(ah)->ah_opmode);
}
