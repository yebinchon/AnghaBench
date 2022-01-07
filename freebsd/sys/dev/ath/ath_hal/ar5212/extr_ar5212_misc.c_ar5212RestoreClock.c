
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_OPMODE ;


 int AR_PCICFG ;
 int AR_PCICFG_SCLK_RATE_IND ;
 int AR_PCICFG_SCLK_SEL ;
 int AR_PHY_M_SLEEP ;
 int AR_PHY_REFCLKDLY ;
 int AR_PHY_REFCLKPD ;
 int AR_PHY_SLEEP_CTR_CONTROL ;
 int AR_PHY_SLEEP_CTR_LIMIT ;
 int AR_PHY_SLEEP_SCAL ;
 int AR_TSF_PARM ;
 int AR_USEC ;
 int AR_USEC_USEC32 ;
 scalar_t__ IS_5413 (struct ath_hal*) ;
 scalar_t__ IS_RAD5112_ANY (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 scalar_t__ ar5212Use32KHzclock (struct ath_hal*,int ) ;

void
ar5212RestoreClock(struct ath_hal *ah, HAL_OPMODE opmode)
{
 if (ar5212Use32KHzclock(ah, opmode)) {

  OS_REG_RMW_FIELD(ah, AR_PCICFG, AR_PCICFG_SCLK_RATE_IND, 0);
  OS_REG_RMW_FIELD(ah, AR_PCICFG, AR_PCICFG_SCLK_SEL, 0);

  OS_REG_WRITE(ah, AR_TSF_PARM, 1);
  OS_REG_RMW_FIELD(ah, AR_USEC, AR_USEC_USEC32,
      IS_RAD5112_ANY(ah) || IS_5413(ah) ? 39 : 31);




  OS_REG_WRITE(ah, AR_PHY_SLEEP_CTR_CONTROL, 0x1f);
  OS_REG_WRITE(ah, AR_PHY_SLEEP_CTR_LIMIT, 0x7f);
  OS_REG_WRITE(ah, AR_PHY_SLEEP_SCAL, 0x0e);
  OS_REG_WRITE(ah, AR_PHY_M_SLEEP, 0x0c);
  OS_REG_WRITE(ah, AR_PHY_REFCLKDLY, 0xff);
  OS_REG_WRITE(ah, AR_PHY_REFCLKPD,
      IS_RAD5112_ANY(ah) || IS_5413(ah) ? 0x14 : 0x18);
 }
}
