
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mmcsd_softc {int dev; int mmcbus; } ;
struct mmc_request {int arg; int flags; int error; int opcode; struct mmc_request* cmd; struct mmc_request* mrq; } ;
struct mmc_command {int arg; int flags; int error; int opcode; struct mmc_command* cmd; struct mmc_command* mrq; } ;
typedef int req ;
typedef int cmd ;


 int MMCBUS_WAIT_FOR_REQUEST (int ,int ,struct mmc_request*) ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_SET_BLOCK_COUNT ;
 int memset (struct mmc_request*,int ,int) ;

__attribute__((used)) static int
mmcsd_set_blockcount(struct mmcsd_softc *sc, u_int count, bool reliable)
{
 struct mmc_command cmd;
 struct mmc_request req;

 memset(&req, 0, sizeof(req));
 memset(&cmd, 0, sizeof(cmd));
 cmd.mrq = &req;
 req.cmd = &cmd;
 cmd.opcode = MMC_SET_BLOCK_COUNT;
 cmd.arg = count & 0x0000FFFF;
 if (reliable)
  cmd.arg |= 1 << 31;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
 MMCBUS_WAIT_FOR_REQUEST(sc->mmcbus, sc->dev, &req);
 return (cmd.error);
}
