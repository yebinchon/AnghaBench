
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct malo_hal {scalar_t__* mh_cmdbuf; int mh_dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int MALO_A2HRIC_BIT_MASK ;
 int MALO_FW_CHECK_USECS ;
 int MALO_FW_MAX_NUM_CHECKS ;
 scalar_t__ MALO_HOSTCMD_STA_FWRDY_SIGNATURE ;
 scalar_t__ MALO_HOSTCMD_STA_MODE ;
 int MALO_REG_A2H_INTERRUPT_CAUSE ;
 int MALO_REG_A2H_INTERRUPT_CLEAR_SEL ;
 int MALO_REG_A2H_INTERRUPT_MASK ;
 int MALO_REG_A2H_INTERRUPT_STATUS_MASK ;
 int MALO_REG_GEN_PTR ;
 int MALO_REG_INT_CODE ;
 int device_printf (int ,char*) ;
 int malo_hal_fw_reset (struct malo_hal*) ;
 int malo_hal_fwload_helper (struct malo_hal*,char*) ;
 int malo_hal_fwload_main (struct malo_hal*,char*) ;
 scalar_t__ malo_hal_read4 (struct malo_hal*,int ) ;
 int malo_hal_resetstate (struct malo_hal*) ;
 int malo_hal_trigger_pcicmd (struct malo_hal*) ;
 int malo_hal_write4 (struct malo_hal*,int ,int) ;

int
malo_hal_fwload(struct malo_hal *mh, char *helper, char *firmware)
{
 int error, i;
 uint32_t fwreadysig, opmode;





 fwreadysig = MALO_HOSTCMD_STA_FWRDY_SIGNATURE;
 opmode = MALO_HOSTCMD_STA_MODE;

 malo_hal_fw_reset(mh);

 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_CLEAR_SEL,
     MALO_A2HRIC_BIT_MASK);
 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_CAUSE, 0x00);
 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_MASK, 0x00);
 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_STATUS_MASK,
     MALO_A2HRIC_BIT_MASK);

 error = malo_hal_fwload_helper(mh, helper);
 if (error != 0) {
  device_printf(mh->mh_dev, "failed to load bootrom loader.\n");
  goto fail;
 }

 DELAY(200 * MALO_FW_CHECK_USECS);

 error = malo_hal_fwload_main(mh, firmware);
 if (error != 0) {
  device_printf(mh->mh_dev, "failed to load firmware.\n");
  goto fail;
 }





 mh->mh_cmdbuf[1] = 0;

 if (opmode != MALO_HOSTCMD_STA_MODE)
  malo_hal_trigger_pcicmd(mh);

 for (i = 0; i < MALO_FW_MAX_NUM_CHECKS; i++) {
  malo_hal_write4(mh, MALO_REG_GEN_PTR, opmode);
  DELAY(MALO_FW_CHECK_USECS);
  if (malo_hal_read4(mh, MALO_REG_INT_CODE) == fwreadysig) {
   malo_hal_write4(mh, MALO_REG_INT_CODE, 0x00);
   return malo_hal_resetstate(mh);
  }
 }

 return ETIMEDOUT;
fail:
 malo_hal_fw_reset(mh);

 return (error);
}
