
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct ar5212AniState {int dummy; } ;
struct TYPE_2__ {struct ar5212AniState* ah_curani; } ;


 TYPE_1__* AH5212 (struct ath_hal*) ;

struct ar5212AniState *
ar5212AniGetCurrentState(struct ath_hal *ah)
{
 return AH5212(ah)->ah_curani;
}
