
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_5__ {int rateCode; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;
typedef int HAL_BOOL ;


 int HT_RC_2_STREAMS (int ) ;
 int IS_HT_RATE (int ) ;
 int KASSERT (int,char*) ;
 int ath_computedur_ht (int ,int ,int,int ,int ) ;
 int ath_hal_computetxtime (struct ath_hal*,TYPE_2__ const*,int ,size_t,int ,int ) ;

uint32_t
ath_hal_pkt_txtime(struct ath_hal *ah, const HAL_RATE_TABLE *rates, uint32_t frameLen,
    uint16_t rateix, HAL_BOOL isht40, HAL_BOOL shortPreamble,
    HAL_BOOL includeSifs)
{
 uint8_t rc;
 int numStreams;

 rc = rates->info[rateix].rateCode;


 if (! IS_HT_RATE(rc))
  return ath_hal_computetxtime(ah, rates, frameLen, rateix,
      shortPreamble, includeSifs);


 numStreams = HT_RC_2_STREAMS(rc);
 KASSERT(numStreams > 0 && numStreams <= 4,
     ("number of spatial streams needs to be 1..3: MCS rate 0x%x!",
     rateix));


 return ath_computedur_ht(frameLen, rc, numStreams, isht40,
     shortPreamble);
}
