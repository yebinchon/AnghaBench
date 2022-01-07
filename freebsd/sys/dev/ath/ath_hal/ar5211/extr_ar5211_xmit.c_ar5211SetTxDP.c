
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ah_txq; } ;
struct TYPE_3__ {scalar_t__ tqi_type; } ;
typedef int HAL_BOOL ;


 TYPE_2__* AH5211 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_QTXDP (size_t) ;
 int AR_Q_TXE ;
 int HALASSERT (int) ;
 size_t HAL_NUM_TX_QUEUES ;
 scalar_t__ HAL_TX_QUEUE_INACTIVE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar5211SetTxDP(struct ath_hal *ah, u_int q, uint32_t txdp)
{
 HALASSERT(q < HAL_NUM_TX_QUEUES);
 HALASSERT(AH5211(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE);





 HALASSERT((OS_REG_READ(ah, AR_Q_TXE) & (1 << q)) == 0);

 OS_REG_WRITE(ah, AR_QTXDP(q), txdp);

 return AH_TRUE;
}
