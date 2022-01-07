
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int flags; int * data; int arg; int opcode; } ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_SET_BLOCKLEN ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_set_blocklen(struct mmc_softc *sc, uint32_t len)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = MMC_SET_BLOCKLEN;
 cmd.arg = len;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
 cmd.data = ((void*)0);
 err = mmc_wait_for_cmd(sc->dev, sc->dev, &cmd, CMD_RETRIES);
 return (err);
}
