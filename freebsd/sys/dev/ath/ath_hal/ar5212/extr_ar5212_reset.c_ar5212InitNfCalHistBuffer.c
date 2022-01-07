
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first_run; int invalidNFcount; void** nfCalBuffer; void* privNF; scalar_t__ currIndex; } ;
struct ath_hal_5212 {TYPE_1__ ah_nfCalHist; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR512_NF_CAL_HIST_MAX ;
 void* AR5212_CCA_MAX_GOOD_VALUE ;

void
ar5212InitNfCalHistBuffer(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 int i;

 ahp->ah_nfCalHist.first_run = 1;
 ahp->ah_nfCalHist.currIndex = 0;
 ahp->ah_nfCalHist.privNF = AR5212_CCA_MAX_GOOD_VALUE;
 ahp->ah_nfCalHist.invalidNFcount = AR512_NF_CAL_HIST_MAX;
 for (i = 0; i < AR512_NF_CAL_HIST_MAX; i ++)
  ahp->ah_nfCalHist.nfCalBuffer[i] = AR5212_CCA_MAX_GOOD_VALUE;
}
