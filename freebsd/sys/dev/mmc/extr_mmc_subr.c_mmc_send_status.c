
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct mmc_command {int arg; int flags; int* resp; int opcode; } ;
typedef int device_t ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_SEND_STATUS ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;

int
mmc_send_status(device_t busdev, device_t dev, uint16_t rca, uint32_t *status)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = MMC_SEND_STATUS;
 cmd.arg = (uint32_t)rca << 16;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
 err = mmc_wait_for_cmd(busdev, dev, &cmd, CMD_RETRIES);
 *status = cmd.resp[0];
 return (err);
}
