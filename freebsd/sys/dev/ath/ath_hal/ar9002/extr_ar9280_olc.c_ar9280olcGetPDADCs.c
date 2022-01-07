
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct ath_hal {int dummy; } ;


 size_t AR5416_NUM_PDADC_VALUES ;
 int AR_PHY_TX_PWRCTRL6_0 ;
 int AR_PHY_TX_PWRCTRL6_1 ;
 int AR_PHY_TX_PWRCTRL7 ;
 int AR_PHY_TX_PWRCTRL_ERR_EST_MODE ;
 int AR_PHY_TX_PWRCTRL_INIT_TX_GAIN ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,size_t) ;

void
ar9280olcGetPDADCs(struct ath_hal *ah, uint32_t initTxGain, int txPower,
    uint8_t *pPDADCValues)
{
 uint32_t i;
 uint32_t offset;

 OS_REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL6_0, AR_PHY_TX_PWRCTRL_ERR_EST_MODE, 3);
 OS_REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL6_1, AR_PHY_TX_PWRCTRL_ERR_EST_MODE, 3);

 OS_REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL7, AR_PHY_TX_PWRCTRL_INIT_TX_GAIN, initTxGain);

 offset = txPower;
 for (i = 0; i < AR5416_NUM_PDADC_VALUES; i++)
  if (i < offset)
   pPDADCValues[i] = 0x0;
  else
   pPDADCValues[i] = 0xFF;
}
