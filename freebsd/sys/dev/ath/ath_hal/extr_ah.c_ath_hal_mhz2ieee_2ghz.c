
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;



int
ath_hal_mhz2ieee_2ghz(struct ath_hal *ah, int freq)
{

 if (freq == 2484)
  return 14;
 if (freq < 2484)
  return ((int) freq - 2407) / 5;
 else
  return 15 + ((freq - 2512) / 20);
}
