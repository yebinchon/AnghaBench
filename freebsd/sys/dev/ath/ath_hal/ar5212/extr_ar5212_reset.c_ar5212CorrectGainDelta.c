
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct ath_hal_5212 {size_t* ah_ratesArray; int * ah_pcdacTable; } ;
struct ath_hal {scalar_t__ ah_magic; } ;
typedef int ratesIndex ;
typedef size_t int32_t ;
typedef size_t int16_t ;
struct TYPE_4__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_3__ {size_t ee_cckOfdmGainDelta; } ;
typedef TYPE_1__ HAL_EEPROM ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AR5212_MAGIC ;
 int HALASSERT (int) ;
 int N (size_t*) ;
 int OS_MEMCPY (size_t*,size_t*,int) ;
 size_t PWR_TABLE_SIZE ;

__attribute__((used)) static void
ar5212CorrectGainDelta(struct ath_hal *ah, int twiceOfdmCckDelta)
{

 struct ath_hal_5212 *ahp = AH5212(ah);
 const HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;
 int16_t ratesIndex[(sizeof(ahp->ah_ratesArray) / sizeof(ahp->ah_ratesArray[0]))];
 uint16_t ii, jj, iter;
 int32_t cckIndex;
 int16_t gainDeltaAdjust;

 HALASSERT(ah->ah_magic == AR5212_MAGIC);

 gainDeltaAdjust = ee->ee_cckOfdmGainDelta;


 OS_MEMCPY(ratesIndex, ahp->ah_ratesArray, sizeof(ratesIndex));


 for (ii = 8; ii < 15; ii++) {

  ratesIndex[ii] -= gainDeltaAdjust;


  jj = 0;
  iter = 0;

  while (jj < 16) {
   if (ratesIndex[ii] < 0)
    ratesIndex[ii] = 0;
   if (jj == 8) {
    jj = 15;
    continue;
   }
   if (ratesIndex[ii] == ahp->ah_ratesArray[jj]) {
    if (ahp->ah_ratesArray[jj] == 0)
     ratesIndex[ii]++;
    else if (iter > 50) {




     ratesIndex[ii]++;
    } else
     ratesIndex[ii]--;

    jj = 0;
    iter++;
   } else
    jj++;
  }
  if (ratesIndex[ii] >= PWR_TABLE_SIZE)
   ratesIndex[ii] = PWR_TABLE_SIZE -1;
  cckIndex = ahp->ah_ratesArray[ii] - twiceOfdmCckDelta;
  if (cckIndex < 0)
   cckIndex = 0;





  HALASSERT(cckIndex < PWR_TABLE_SIZE);
  HALASSERT(ratesIndex[ii] < PWR_TABLE_SIZE);
  ahp->ah_pcdacTable[ratesIndex[ii]] =
   ahp->ah_pcdacTable[cckIndex];
 }

 for (ii = 8; ii < 15; ii++)
  ahp->ah_ratesArray[ii] = ratesIndex[ii];

}
