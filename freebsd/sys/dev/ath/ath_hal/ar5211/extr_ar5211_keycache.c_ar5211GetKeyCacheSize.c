
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_KEYTABLE_SIZE ;

uint32_t
ar5211GetKeyCacheSize(struct ath_hal *ah)
{
 return AR_KEYTABLE_SIZE;
}
