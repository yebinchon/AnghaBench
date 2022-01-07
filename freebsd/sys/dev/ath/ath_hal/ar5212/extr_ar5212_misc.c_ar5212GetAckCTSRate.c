
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_staId1Defaults; } ;


 TYPE_1__* AH5212 (struct ath_hal*) ;
 int AR_STA_ID1_ACKCTS_6MB ;

u_int
ar5212GetAckCTSRate(struct ath_hal *ah)
{
 return ((AH5212(ah)->ah_staId1Defaults & AR_STA_ID1_ACKCTS_6MB) == 0);
}
