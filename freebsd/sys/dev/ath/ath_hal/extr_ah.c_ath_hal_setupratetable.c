
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {scalar_t__* rateCodeToIndex; int rateCount; TYPE_1__* info; } ;
struct TYPE_5__ {size_t rateCode; size_t controlRate; size_t shortPreamble; void* spAckDuration; void* lpAckDuration; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;


 int AH_FALSE ;
 int AH_TRUE ;
 int HALASSERT (int) ;
 size_t N (scalar_t__*) ;
 int WLAN_CTRL_FRAME_SIZE ;
 void* ath_hal_computetxtime (struct ath_hal*,TYPE_2__*,int ,size_t,int ,int ) ;

void
ath_hal_setupratetable(struct ath_hal *ah, HAL_RATE_TABLE *rt)
{

 int i;

 if (rt->rateCodeToIndex[0] != 0)
  return;
 for (i = 0; i < (sizeof(rt->rateCodeToIndex)/sizeof(rt->rateCodeToIndex[0])); i++)
  rt->rateCodeToIndex[i] = (uint8_t) -1;
 for (i = 0; i < rt->rateCount; i++) {
  uint8_t code = rt->info[i].rateCode;
  uint8_t cix = rt->info[i].controlRate;

  HALASSERT(code < (sizeof(rt->rateCodeToIndex)/sizeof(rt->rateCodeToIndex[0])));
  rt->rateCodeToIndex[code] = i;
  HALASSERT((code | rt->info[i].shortPreamble) <
      (sizeof(rt->rateCodeToIndex)/sizeof(rt->rateCodeToIndex[0])));
  rt->rateCodeToIndex[code | rt->info[i].shortPreamble] = i;






  rt->info[i].lpAckDuration = ath_hal_computetxtime(ah, rt,
   WLAN_CTRL_FRAME_SIZE, cix, AH_FALSE, AH_TRUE);
  rt->info[i].spAckDuration = ath_hal_computetxtime(ah, rt,
   WLAN_CTRL_FRAME_SIZE, cix, AH_TRUE, AH_TRUE);
 }

}
