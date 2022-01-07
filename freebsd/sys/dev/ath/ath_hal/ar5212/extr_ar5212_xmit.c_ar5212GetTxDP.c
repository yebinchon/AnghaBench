
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halTotalQueues; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_QTXDP (scalar_t__) ;
 int HALASSERT (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5212GetTxDP(struct ath_hal *ah, u_int q)
{
 HALASSERT(q < AH_PRIVATE(ah)->ah_caps.halTotalQueues);
 return OS_REG_READ(ah, AR_QTXDP(q));
}
