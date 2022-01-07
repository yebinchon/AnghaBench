
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ int8_t ;
typedef int int16_t ;


 size_t AR5416_MAX_RATE_POWER ;
 scalar_t__ AR5416_PWR_TABLE_OFFSET_DB ;
 scalar_t__ AR_SREV_MERLIN_20_OR_LATER (struct ath_hal*) ;
 scalar_t__ min (size_t,size_t) ;

__attribute__((used)) static int16_t
ar9280ChangeGainBoundarySettings(struct ath_hal *ah, uint16_t *gb,
    uint16_t numXpdGain, uint16_t pdGainOverlap_t2, int8_t pwr_table_offset,
    int16_t *diff)
{
 uint16_t k;






 if (AR_SREV_MERLIN_20_OR_LATER(ah)) {
  uint16_t gb_limit;

  if (AR5416_PWR_TABLE_OFFSET_DB != pwr_table_offset) {

   *diff = (uint16_t)(pwr_table_offset - AR5416_PWR_TABLE_OFFSET_DB);

   *diff *= 2;



   for (k = 0; k < numXpdGain; k++)
    gb[k] = (uint16_t)(gb[k] - *diff);
  }



  gb_limit = (uint16_t)(AR5416_MAX_RATE_POWER - pdGainOverlap_t2);

  for (k = 0; k < numXpdGain; k++)
   gb[k] = (uint16_t)min(gb_limit, gb[k]);
 }

 return *diff;
}
