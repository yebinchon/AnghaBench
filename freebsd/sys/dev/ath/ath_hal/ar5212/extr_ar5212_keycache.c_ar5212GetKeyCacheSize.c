
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halKeyCacheSize; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;

uint32_t
ar5212GetKeyCacheSize(struct ath_hal *ah)
{
 return AH_PRIVATE(ah)->ah_caps.halKeyCacheSize;
}
