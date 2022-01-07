
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_CFG ;
 int AR_CFG_SWRD ;
 int AR_CFG_SWTD ;
 int AR_RC ;
 int AR_RC_BB ;
 int AR_RC_MAC ;
 int AR_RXDP ;
 int INIT_CONFIG_STATUS ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_wait (struct ath_hal*,int ,int,int) ;
 scalar_t__ isBigEndian () ;

__attribute__((used)) static HAL_BOOL
ar5211SetResetReg(struct ath_hal *ah, uint32_t resetMask)
{
 uint32_t mask = resetMask ? resetMask : ~0;
 HAL_BOOL rt;

 (void) OS_REG_READ(ah, AR_RXDP);
 OS_REG_WRITE(ah, AR_RC, resetMask);


 OS_DELAY(15);

 resetMask &= AR_RC_MAC | AR_RC_BB;
 mask &= AR_RC_MAC | AR_RC_BB;
 rt = ath_hal_wait(ah, AR_RC, mask, resetMask);
        if ((resetMask & AR_RC_MAC) == 0) {
  if (isBigEndian()) {



   mask = INIT_CONFIG_STATUS | AR_CFG_SWTD | AR_CFG_SWRD;
   OS_REG_WRITE(ah, AR_CFG, mask);
  } else
   OS_REG_WRITE(ah, AR_CFG, INIT_CONFIG_STATUS);
 }
 return rt;
}
