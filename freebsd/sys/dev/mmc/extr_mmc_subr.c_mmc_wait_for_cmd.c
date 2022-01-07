
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_softc {scalar_t__ squelched; int dev; int log_count; int log_time; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int error; int opcode; TYPE_1__* data; struct mmc_request* mrq; scalar_t__ retries; struct mmc_request* resp; } ;
typedef int mreq ;
typedef scalar_t__ device_t ;
struct TYPE_2__ {struct mmc_request* mrq; } ;


 int LOG_PPS ;
 scalar_t__ MMCBUS_WAIT_FOR_REQUEST (scalar_t__,scalar_t__,struct mmc_request*) ;
 int MMC_ERR_FAILED ;
 int MMC_ERR_NONE ;
 struct mmc_softc* device_get_softc (scalar_t__) ;
 int device_printf (int ,char*,int ,int) ;
 int memset (struct mmc_request*,int ,int) ;
 scalar_t__ ppsratecheck (int *,int *,int ) ;

int
mmc_wait_for_cmd(device_t busdev, device_t dev, struct mmc_command *cmd,
    int retries)
{
 struct mmc_request mreq;
 struct mmc_softc *sc;
 int err;

 do {
  memset(&mreq, 0, sizeof(mreq));
  memset(cmd->resp, 0, sizeof(cmd->resp));
  cmd->retries = 0;
  cmd->mrq = &mreq;
  if (cmd->data != ((void*)0))
   cmd->data->mrq = &mreq;
  mreq.cmd = cmd;
  if (MMCBUS_WAIT_FOR_REQUEST(busdev, dev, &mreq) != 0)
   err = MMC_ERR_FAILED;
  else
   err = cmd->error;
 } while (err != MMC_ERR_NONE && retries-- > 0);

 if (err != MMC_ERR_NONE && busdev == dev) {
  sc = device_get_softc(busdev);
  if (sc->squelched == 0 && ppsratecheck(&sc->log_time,
      &sc->log_count, LOG_PPS)) {
   device_printf(sc->dev, "CMD%d failed, RESULT: %d\n",
       cmd->opcode, err);
  }
 }

 return (err);
}
