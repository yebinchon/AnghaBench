
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_long ;
struct mmcsd_softc {int rca; int ext_csd; int flags; int mmcbus; int dev; } ;
struct mmcsd_part {scalar_t__ ro; int ioctl; int type; struct mmcsd_softc* sc; int ioctl_mtx; } ;
struct mmc_ioc_cmd {int write_flag; int blksz; int blocks; int opcode; int arg; scalar_t__ is_acmd; scalar_t__ data_ptr; int response; int flags; } ;
struct mmc_data {int opcode; int arg; int len; int error; int resp; struct mmc_data* data; int flags; } ;
struct mmc_command {int opcode; int arg; int len; int error; int resp; struct mmc_command* data; int flags; } ;
typedef int device_t ;
typedef int data ;
typedef int cmd ;


 int DELAY (int) ;
 int EBADF ;
 int EILSEQ ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int EOVERFLOW ;
 int EPERM ;
 int EROFS ;
 int ETIMEDOUT ;
 size_t EXT_CSD_PART_CONFIG ;
 int EXT_CSD_PART_CONFIG_ACC_DEFAULT ;
 int EXT_CSD_PART_CONFIG_ACC_MASK ;
 int EXT_CSD_PART_CONFIG_ACC_RPMB ;
 int FWRITE ;
 int MMCBUS_ACQUIRE_BUS (int ,int ) ;
 int MMCBUS_RELEASE_BUS (int ,int ) ;
 int MMCSD_CMD_RETRIES ;
 int MMCSD_DIRTY ;
 int MMCSD_IOCTL_LOCK (struct mmcsd_part*) ;
 int MMCSD_IOCTL_UNLOCK (struct mmcsd_part*) ;

 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;


 int MMC_ERR_NONE ;




 int MMC_IOC_MAX_BYTES ;







 int MMC_SWITCH_FUNC ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ R1_CURRENT_STATE (int ) ;
 scalar_t__ R1_STATE_PRG ;
 scalar_t__ R1_STATUS (int ) ;
 scalar_t__ TRUE ;
 int copyin (void*,void*,int) ;
 int copyout (void*,void*,int) ;
 int free (void*,int ) ;
 void* malloc (int,int ,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mmc_data*,int ,int) ;
 int mmc_send_ext_csd (int ,int ,int ) ;
 int mmc_send_status (int ,int ,int,int *) ;
 int mmc_wait_for_app_cmd (int ,int ,int,struct mmc_data*,int ) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_data*,int ) ;
 int mmcsd_set_blockcount (struct mmcsd_softc*,int,int) ;
 int mmcsd_switch_part (int ,int ,int,int) ;
 int msleep (struct mmcsd_part*,int *,int ,char*,int ) ;
 int wakeup (struct mmcsd_part*) ;

__attribute__((used)) static int
mmcsd_ioctl_cmd(struct mmcsd_part *part, struct mmc_ioc_cmd *mic, int fflag)
{
 struct mmc_command cmd;
 struct mmc_data data;
 struct mmcsd_softc *sc;
 device_t dev, mmcbus;
 void *dp;
 u_long len;
 int err, retries;
 uint32_t status;
 uint16_t rca;

 if ((fflag & FWRITE) == 0 && mic->write_flag != 0)
  return (EBADF);

 if (part->ro == TRUE && mic->write_flag != 0)
  return (EROFS);
 MMCSD_IOCTL_LOCK(part);
 while (part->ioctl != 0) {
  if (part->ioctl < 0) {
   MMCSD_IOCTL_UNLOCK(part);
   return (ENXIO);
  }
  msleep(part, &part->ioctl_mtx, 0, "mmcsd IOCTL", 0);
 }
 part->ioctl = 1;
 MMCSD_IOCTL_UNLOCK(part);

 err = 0;
 dp = ((void*)0);
 len = mic->blksz * mic->blocks;
 if (len > MMC_IOC_MAX_BYTES) {
  err = EOVERFLOW;
  goto out;
 }
 if (len != 0) {
  dp = malloc(len, M_TEMP, M_WAITOK);
  err = copyin((void *)(uintptr_t)mic->data_ptr, dp, len);
  if (err != 0)
   goto out;
 }
 memset(&cmd, 0, sizeof(cmd));
 memset(&data, 0, sizeof(data));
 cmd.opcode = mic->opcode;
 cmd.arg = mic->arg;
 cmd.flags = mic->flags;
 if (len != 0) {
  data.len = len;
  data.data = dp;
  data.flags = mic->write_flag != 0 ? MMC_DATA_WRITE :
      MMC_DATA_READ;
  cmd.data = &data;
 }
 sc = part->sc;
 rca = sc->rca;
 if (mic->is_acmd == 0) {

  switch (cmd.opcode) {
  case 130:
  case 134:
   err = EPERM;
   goto out;
  case 128:
   if ((cmd.arg & 0x1) == 0)
    break;

  case 129:
  case 132:
  case 133:
  case 131:
  case 135:
  case 136:
  case 141:
   cmd.arg = (cmd.arg & 0x0000FFFF) | (rca << 16);
   break;
  default:
   break;
  }




  if (cmd.opcode == MMC_SWITCH_FUNC && dp != ((void*)0) &&
      (((uint8_t *)dp)[EXT_CSD_PART_CONFIG] &
      EXT_CSD_PART_CONFIG_ACC_MASK) != part->type) {
   err = EINVAL;
   goto out;
  }
 }
 dev = sc->dev;
 mmcbus = sc->mmcbus;
 MMCBUS_ACQUIRE_BUS(mmcbus, dev);
 err = mmcsd_switch_part(mmcbus, dev, rca, part->type);
 if (err != MMC_ERR_NONE)
  goto release;
 if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
  err = mmcsd_set_blockcount(sc, mic->blocks,
      mic->write_flag & (1 << 31));
  if (err != MMC_ERR_NONE)
   goto switch_back;
 }
 if (mic->write_flag != 0)
  sc->flags |= MMCSD_DIRTY;
 if (mic->is_acmd != 0)
  (void)mmc_wait_for_app_cmd(mmcbus, dev, rca, &cmd, 0);
 else
  (void)mmc_wait_for_cmd(mmcbus, dev, &cmd, 0);
 if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {




  retries = MMCSD_CMD_RETRIES;
  do {
   err = mmc_send_status(mmcbus, dev, rca, &status);
   if (err != MMC_ERR_NONE)
    break;
   if (R1_STATUS(status) == 0 &&
       R1_CURRENT_STATE(status) != R1_STATE_PRG)
    break;
   DELAY(1000);
  } while (retries-- > 0);
 }





 if (cmd.opcode == MMC_SWITCH_FUNC) {
  err = mmc_send_ext_csd(mmcbus, dev, sc->ext_csd);
  if (err != MMC_ERR_NONE)
   goto release;
 }
switch_back:
 if (part->type == EXT_CSD_PART_CONFIG_ACC_RPMB) {




  err = mmcsd_switch_part(mmcbus, dev, rca,
      EXT_CSD_PART_CONFIG_ACC_DEFAULT);
  if (err != MMC_ERR_NONE)
   goto release;
 }
 MMCBUS_RELEASE_BUS(mmcbus, dev);
 if (cmd.error != MMC_ERR_NONE) {
  switch (cmd.error) {
  case 137:
   err = ETIMEDOUT;
   break;
  case 140:
   err = EILSEQ;
   break;
  case 139:
   err = EINVAL;
   break;
  case 138:
   err = ENOMEM;
   break;
  default:
   err = EIO;
   break;
  }
  goto out;
 }
 memcpy(mic->response, cmd.resp, 4 * sizeof(uint32_t));
 if (mic->write_flag == 0 && len != 0) {
  err = copyout(dp, (void *)(uintptr_t)mic->data_ptr, len);
  if (err != 0)
   goto out;
 }
 goto out;

release:
 MMCBUS_RELEASE_BUS(mmcbus, dev);
 err = EIO;

out:
 MMCSD_IOCTL_LOCK(part);
 part->ioctl = 0;
 MMCSD_IOCTL_UNLOCK(part);
 wakeup(part);
 if (dp != ((void*)0))
  free(dp, M_TEMP);
 return (err);
}
