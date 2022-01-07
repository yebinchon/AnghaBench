
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int IS_RAD5112 (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar5112Probe(struct ath_hal *ah)
{
 return IS_RAD5112(ah);
}
