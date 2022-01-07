
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_RX_QUEUE ;


 int AR_RXDP ;
 int HALASSERT (int) ;
 scalar_t__ HAL_RX_QUEUE_HP ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5211GetRxDP(struct ath_hal *ah, HAL_RX_QUEUE qtype)
{

 HALASSERT(qtype == HAL_RX_QUEUE_HP);
 return OS_REG_READ(ah, AR_RXDP);
}
