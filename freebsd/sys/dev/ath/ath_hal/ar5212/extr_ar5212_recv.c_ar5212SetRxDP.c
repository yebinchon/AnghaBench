
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_RX_QUEUE ;


 int AR_RXDP ;
 int HALASSERT (int) ;
 scalar_t__ HAL_RX_QUEUE_HP ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;

void
ar5212SetRxDP(struct ath_hal *ah, uint32_t rxdp, HAL_RX_QUEUE qtype)
{

 HALASSERT(qtype == HAL_RX_QUEUE_HP);
 OS_REG_WRITE(ah, AR_RXDP, rxdp);
 HALASSERT(OS_REG_READ(ah, AR_RXDP) == rxdp);
}
