
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int beacons; int rts_good; int fcs_bad; int rts_bad; int ackrcv_bad; } ;
typedef TYPE_1__ HAL_MIB_STATS ;


 int AR_ACK_FAIL ;
 int AR_BEACON_CNT ;
 int AR_FCS_FAIL ;
 int AR_RTS_FAIL ;
 int AR_RTS_OK ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;

void
ar5210UpdateMibCounters(struct ath_hal *ah, HAL_MIB_STATS *stats)
{
 stats->ackrcv_bad += OS_REG_READ(ah, AR_ACK_FAIL);
 stats->rts_bad += OS_REG_READ(ah, AR_RTS_FAIL);
 stats->fcs_bad += OS_REG_READ(ah, AR_FCS_FAIL);
 stats->rts_good += OS_REG_READ(ah, AR_RTS_OK);
 stats->beacons += OS_REG_READ(ah, AR_BEACON_CNT);
}
