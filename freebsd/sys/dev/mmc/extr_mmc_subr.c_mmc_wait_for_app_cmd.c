
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct mmc_softc {scalar_t__ squelched; int dev; int log_count; int log_time; } ;
struct mmc_command {int arg; int flags; int error; int* resp; int opcode; } ;
typedef scalar_t__ device_t ;
typedef int appcmd ;


 int LOG_PPS ;
 int MMC_APP_CMD ;
 int MMC_CMD_AC ;
 int MMC_ERR_FAILED ;
 int MMC_ERR_NONE ;
 int MMC_RSP_R1 ;
 int R1_APP_CMD ;
 struct mmc_softc* device_get_softc (scalar_t__) ;
 int device_printf (int ,char*,int ,int) ;
 int memset (struct mmc_command*,int ,int) ;
 scalar_t__ mmc_wait_for_cmd (scalar_t__,scalar_t__,struct mmc_command*,int ) ;
 scalar_t__ ppsratecheck (int *,int *,int ) ;

int
mmc_wait_for_app_cmd(device_t busdev, device_t dev, uint16_t rca,
    struct mmc_command *cmd, int retries)
{
 struct mmc_command appcmd;
 struct mmc_softc *sc;
 int err;

 sc = device_get_softc(busdev);


 sc->squelched++;
 do {
  memset(&appcmd, 0, sizeof(appcmd));
  appcmd.opcode = MMC_APP_CMD;
  appcmd.arg = (uint32_t)rca << 16;
  appcmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
  if (mmc_wait_for_cmd(busdev, dev, &appcmd, 0) != 0)
   err = MMC_ERR_FAILED;
  else
   err = appcmd.error;
  if (err == MMC_ERR_NONE) {
   if (!(appcmd.resp[0] & R1_APP_CMD))
    err = MMC_ERR_FAILED;
   else if (mmc_wait_for_cmd(busdev, dev, cmd, 0) != 0)
    err = MMC_ERR_FAILED;
   else
    err = cmd->error;
  }
 } while (err != MMC_ERR_NONE && retries-- > 0);
 sc->squelched--;

 if (err != MMC_ERR_NONE && busdev == dev) {
  if (sc->squelched == 0 && ppsratecheck(&sc->log_time,
      &sc->log_count, LOG_PPS)) {
   device_printf(sc->dev, "ACMD%d failed, RESULT: %d\n",
       cmd->opcode, err);
  }
 }

 return (err);
}
