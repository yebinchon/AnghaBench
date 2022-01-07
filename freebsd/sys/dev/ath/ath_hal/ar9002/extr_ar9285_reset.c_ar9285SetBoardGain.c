
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int version; } ;
struct ar5416eeprom_4k {TYPE_1__ baseEepHeader; } ;
struct TYPE_5__ {int* antCtrlChain; int * rxTxMarginCh; int * xatten2Db; int * xatten2Margin; int * bswAtten; int * bswMargin; int * txRxAttenCh; int * iqCalQCh; int * iqCalICh; } ;
typedef TYPE_2__ MODAL_EEP4K_HEADER ;


 int AR5416_EEP_MINOR_VER_3 ;
 int AR5416_EEP_VER_MINOR_MASK ;
 int AR9280_PHY_RXGAIN_TXRX_ATTEN ;
 int AR9280_PHY_RXGAIN_TXRX_MARGIN ;
 scalar_t__ AR_PHY_GAIN_2GHZ ;
 int AR_PHY_GAIN_2GHZ_XATTEN1_DB ;
 int AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN ;
 int AR_PHY_GAIN_2GHZ_XATTEN2_DB ;
 int AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN ;
 scalar_t__ AR_PHY_RXGAIN ;
 int AR_PHY_SWITCH_CHAIN_0 ;
 int AR_PHY_TIMING_CTRL4_CHAIN (int ) ;
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ;
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,scalar_t__,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int) ;

__attribute__((used)) static void
ar9285SetBoardGain(struct ath_hal *ah, const MODAL_EEP4K_HEADER *pModal,
    const struct ar5416eeprom_4k *eep, uint8_t txRxAttenLocal)
{
 OS_REG_WRITE(ah, AR_PHY_SWITCH_CHAIN_0,
    pModal->antCtrlChain[0]);

 OS_REG_WRITE(ah, AR_PHY_TIMING_CTRL4_CHAIN(0),
    (OS_REG_READ(ah, AR_PHY_TIMING_CTRL4_CHAIN(0)) &
     ~(AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF |
       AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF)) |
    SM(pModal->iqCalICh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF) |
    SM(pModal->iqCalQCh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF));

 if ((eep->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
     AR5416_EEP_MINOR_VER_3) {
  txRxAttenLocal = pModal->txRxAttenCh[0];

  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ,
      AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, pModal->bswMargin[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ,
      AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ,
      AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, pModal->xatten2Margin[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ,
      AR_PHY_GAIN_2GHZ_XATTEN2_DB, pModal->xatten2Db[0]);


  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + 0x1000,
        AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN,
        pModal->bswMargin[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + 0x1000,
        AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + 0x1000,
        AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
        pModal->xatten2Margin[0]);
  OS_REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + 0x1000,
        AR_PHY_GAIN_2GHZ_XATTEN2_DB, pModal->xatten2Db[0]);
 }

 OS_REG_RMW_FIELD(ah, AR_PHY_RXGAIN,
        AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
 OS_REG_RMW_FIELD(ah, AR_PHY_RXGAIN,
        AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);

 OS_REG_RMW_FIELD(ah, AR_PHY_RXGAIN + 0x1000,
        AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
 OS_REG_RMW_FIELD(ah, AR_PHY_RXGAIN + 0x1000,
        AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);
}
