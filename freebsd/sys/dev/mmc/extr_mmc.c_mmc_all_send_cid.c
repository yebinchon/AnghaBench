
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int flags; int resp; int * data; scalar_t__ arg; int opcode; } ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_ALL_SEND_CID ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R2 ;
 int memcpy (int *,int ,int) ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_all_send_cid(struct mmc_softc *sc, uint32_t *rawcid)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = MMC_ALL_SEND_CID;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_R2 | MMC_CMD_BCR;
 cmd.data = ((void*)0);
 err = mmc_wait_for_cmd(sc->dev, sc->dev, &cmd, CMD_RETRIES);
 memcpy(rawcid, cmd.resp, 4 * sizeof(uint32_t));
 return (err);
}
