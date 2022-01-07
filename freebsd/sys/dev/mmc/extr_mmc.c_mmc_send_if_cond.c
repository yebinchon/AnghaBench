
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int arg; int flags; int * data; int opcode; } ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R7 ;
 int SD_SEND_IF_COND ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_send_if_cond(struct mmc_softc *sc, uint8_t vhs)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = SD_SEND_IF_COND;
 cmd.arg = (vhs << 8) + 0xAA;
 cmd.flags = MMC_RSP_R7 | MMC_CMD_BCR;
 cmd.data = ((void*)0);

 err = mmc_wait_for_cmd(sc->dev, sc->dev, &cmd, CMD_RETRIES);
 return (err);
}
