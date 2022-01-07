
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_CFG ;
 int AR_CFG_SWRD ;
 int AR_CFG_SWTD ;
 int AR_RC ;
 int AR_RC_RDMA ;
 int AR_RC_RMAC ;
 int AR_RC_RPCU ;
 int AR_RC_RPHY ;
 int INIT_CONFIG_STATUS ;
 int OS_DELAY (int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_wait (struct ath_hal*,int ,int,int) ;
 scalar_t__ isBigEndian () ;

__attribute__((used)) static HAL_BOOL
ar5210SetResetReg(struct ath_hal *ah, uint32_t resetMask, u_int delay)
{
 uint32_t mask = resetMask ? resetMask : ~0;
 HAL_BOOL rt;

 OS_REG_WRITE(ah, AR_RC, resetMask);

 OS_DELAY(delay);

 resetMask &= AR_RC_RPCU | AR_RC_RDMA | AR_RC_RPHY | AR_RC_RMAC;
 mask &= AR_RC_RPCU | AR_RC_RDMA | AR_RC_RPHY | AR_RC_RMAC;
 rt = ath_hal_wait(ah, AR_RC, mask, resetMask);
        if ((resetMask & AR_RC_RMAC) == 0) {
  if (isBigEndian()) {



   mask = INIT_CONFIG_STATUS | AR_CFG_SWTD | AR_CFG_SWRD;
   OS_REG_WRITE(ah, AR_CFG, mask);
  } else
   OS_REG_WRITE(ah, AR_CFG, INIT_CONFIG_STATUS);
 }
 return rt;
}
