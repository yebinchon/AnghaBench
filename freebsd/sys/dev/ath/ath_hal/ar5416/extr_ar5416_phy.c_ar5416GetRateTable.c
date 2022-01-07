
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int const HAL_RATE_TABLE ;
 int const* ar5212GetRateTable (struct ath_hal*,int) ;
 int const ar5416_11na_table ;
 int const ar5416_11ng_table ;
 int ath_hal_setupratetable (struct ath_hal*,int const*) ;

const HAL_RATE_TABLE *
ar5416GetRateTable(struct ath_hal *ah, u_int mode)
{
 HAL_RATE_TABLE *rt;
 switch (mode) {
 case 130:
 case 128:
 case 129:
  rt = &ar5416_11ng_table;
  break;
 case 133:
 case 131:
 case 132:
  rt = &ar5416_11na_table;
  break;
 default:
  return ar5212GetRateTable(ah, mode);
 }
 ath_hal_setupratetable(ah, rt);
 return rt;
}
