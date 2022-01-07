
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;


 int AR_QTXDP (scalar_t__) ;
 int HALASSERT (int) ;
 scalar_t__ HAL_NUM_TX_QUEUES ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5211GetTxDP(struct ath_hal *ah, u_int q)
{
 HALASSERT(q < HAL_NUM_TX_QUEUES);
 return OS_REG_READ(ah, AR_QTXDP(q));
}
