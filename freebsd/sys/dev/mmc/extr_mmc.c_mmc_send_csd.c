
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int arg; int flags; int resp; int * data; int opcode; } ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R2 ;
 int MMC_SEND_CSD ;
 int memcpy (int *,int ,int) ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_send_csd(struct mmc_softc *sc, uint16_t rca, uint32_t *rawcsd)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = MMC_SEND_CSD;
 cmd.arg = rca << 16;
 cmd.flags = MMC_RSP_R2 | MMC_CMD_BCR;
 cmd.data = ((void*)0);
 err = mmc_wait_for_cmd(sc->dev, sc->dev, &cmd, CMD_RETRIES);
 memcpy(rawcsd, cmd.resp, 4 * sizeof(uint32_t));
 return (err);
}
