
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {int ah_txTrigLev; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_AHB_MODE ;
 int AR_AHB_PREFETCH_RD_EN ;
 int AR_FTRIG ;
 int AR_PCU_TXBUF_CTRL ;
 int AR_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_RXCFG ;
 int AR_RXCFG_DMASZ_128B ;
 int AR_RXCFG_DMASZ_MASK ;
 int AR_RXFIFO_CFG ;
 scalar_t__ AR_SREV_KITE (struct ath_hal*) ;
 int AR_TXCFG ;
 int AR_TXCFG_DMASZ_128B ;
 int AR_TXCFG_DMASZ_MASK ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int) ;

__attribute__((used)) static void
ar5416InitDMA(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);




 OS_REG_SET_BIT(ah, AR_AHB_MODE, AR_AHB_PREFETCH_RD_EN);




 OS_REG_WRITE(ah, AR_TXCFG,
  (OS_REG_READ(ah, AR_TXCFG) & ~AR_TXCFG_DMASZ_MASK) | AR_TXCFG_DMASZ_128B);
 OS_REG_WRITE(ah, AR_RXCFG,
  (OS_REG_READ(ah, AR_RXCFG) & ~AR_RXCFG_DMASZ_MASK) | AR_RXCFG_DMASZ_128B);


 OS_REG_WRITE(ah, AR_TXCFG,
  (OS_REG_READ(ah, AR_TXCFG) &~ AR_FTRIG) |
      SM(ahp->ah_txTrigLev, AR_FTRIG));




 OS_REG_WRITE(ah, AR_RXFIFO_CFG, 0x200);





 if (AR_SREV_KITE(ah))





  OS_REG_WRITE(ah, AR_PCU_TXBUF_CTRL, AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE);
 else
  OS_REG_WRITE(ah, AR_PCU_TXBUF_CTRL, AR_PCU_TXBUF_CTRL_USABLE_SIZE);
}
