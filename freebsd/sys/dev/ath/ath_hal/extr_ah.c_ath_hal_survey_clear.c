
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_chansurvey; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int OS_MEMZERO (int *,int) ;

void
ath_hal_survey_clear(struct ath_hal *ah)
{

 OS_MEMZERO(&AH_PRIVATE(ah)->ah_chansurvey,
     sizeof(AH_PRIVATE(ah)->ah_chansurvey));
}
