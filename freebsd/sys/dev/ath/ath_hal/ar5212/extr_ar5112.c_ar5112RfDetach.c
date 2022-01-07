
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {scalar_t__ ah_rfHal; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 scalar_t__ AH_NULL ;
 int HALASSERT (int) ;
 int ath_hal_free (scalar_t__) ;

__attribute__((used)) static void
ar5112RfDetach(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 HALASSERT(ahp->ah_rfHal != AH_NULL);
 ath_hal_free(ahp->ah_rfHal);
 ahp->ah_rfHal = AH_NULL;
}
