
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 scalar_t__ IS_2417 (struct ath_hal*) ;
 scalar_t__ IS_2425 (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar2425Probe(struct ath_hal *ah)
{
 return IS_2425(ah) || IS_2417(ah);
}
