
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 scalar_t__ Amode ;
 scalar_t__ Bmode ;
 scalar_t__ Gmode ;
 int HAL_MODE_108G ;
 int HAL_MODE_11A ;
 int HAL_MODE_11B ;
 int HAL_MODE_11G ;
 int HAL_MODE_11NA_HT20 ;
 int HAL_MODE_11NA_HT40MINUS ;
 int HAL_MODE_11NA_HT40PLUS ;
 int HAL_MODE_11NG_HT20 ;
 int HAL_MODE_11NG_HT40MINUS ;
 int HAL_MODE_11NG_HT40PLUS ;
 int HAL_MODE_TURBO ;
 scalar_t__ HT20mode ;
 scalar_t__ HT40mode ;
 int turbo2Disable ;
 int turbo5Disable ;

__attribute__((used)) static u_int
getWirelessModes(struct ath_hal *ah)
{
 u_int mode = 0;

 if (Amode) {
  mode = HAL_MODE_11A;
  if (!turbo5Disable)
   mode |= HAL_MODE_TURBO;
 }
 if (Bmode)
  mode |= HAL_MODE_11B;
 if (Gmode) {
  mode |= HAL_MODE_11G;
  if (!turbo2Disable)
   mode |= HAL_MODE_108G;
 }
 if (HT20mode)
  mode |= HAL_MODE_11NG_HT20|HAL_MODE_11NA_HT20;
 if (HT40mode)
  mode |= HAL_MODE_11NG_HT40PLUS|HAL_MODE_11NA_HT40PLUS
       | HAL_MODE_11NG_HT40MINUS|HAL_MODE_11NA_HT40MINUS
       ;
 return mode;
}
