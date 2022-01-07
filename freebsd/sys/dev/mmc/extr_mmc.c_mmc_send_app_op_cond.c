
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int arg; int flags; int* resp; int * data; int opcode; } ;
typedef int cmd ;


 int ACMD_SD_SEND_OP_COND ;
 int CMD_RETRIES ;
 int MMC_CMD_BCR ;
 int MMC_ERR_NONE ;
 int MMC_ERR_TIMEOUT ;
 int MMC_OCR_CARD_BUSY ;
 int MMC_OCR_VOLTAGE ;
 int MMC_RSP_R3 ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_ms_delay (int) ;
 int mmc_wait_for_app_cmd (int ,int ,int ,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_send_app_op_cond(struct mmc_softc *sc, uint32_t ocr, uint32_t *rocr)
{
 struct mmc_command cmd;
 int err = MMC_ERR_NONE, i;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = ACMD_SD_SEND_OP_COND;
 cmd.arg = ocr;
 cmd.flags = MMC_RSP_R3 | MMC_CMD_BCR;
 cmd.data = ((void*)0);

 for (i = 0; i < 1000; i++) {
  err = mmc_wait_for_app_cmd(sc->dev, sc->dev, 0, &cmd,
      CMD_RETRIES);
  if (err != MMC_ERR_NONE)
   break;
  if ((cmd.resp[0] & MMC_OCR_CARD_BUSY) ||
      (ocr & MMC_OCR_VOLTAGE) == 0)
   break;
  err = MMC_ERR_TIMEOUT;
  mmc_ms_delay(10);
 }
 if (rocr && err == MMC_ERR_NONE)
  *rocr = cmd.resp[0];
 return (err);
}
