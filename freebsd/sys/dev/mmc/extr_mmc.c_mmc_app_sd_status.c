
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; int len; struct mmc_data* data; scalar_t__ arg; int opcode; } ;
typedef struct mmc_data uint32_t ;
typedef int uint16_t ;
struct mmc_softc {int dev; } ;
struct mmc_command {int flags; int len; struct mmc_command* data; scalar_t__ arg; int opcode; } ;
typedef int data ;
typedef int cmd ;


 int ACMD_SD_STATUS ;
 int CMD_RETRIES ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_RSP_R1 ;
 struct mmc_data be32toh (struct mmc_data) ;
 int memset (struct mmc_data*,int ,int) ;
 int mmc_wait_for_app_cmd (int ,int ,int ,struct mmc_data*,int ) ;

__attribute__((used)) static int
mmc_app_sd_status(struct mmc_softc *sc, uint16_t rca, uint32_t *rawsdstatus)
{
 struct mmc_command cmd;
 struct mmc_data data;
 int err, i;

 memset(&cmd, 0, sizeof(cmd));
 memset(&data, 0, sizeof(data));

 memset(rawsdstatus, 0, 64);
 cmd.opcode = ACMD_SD_STATUS;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_ADTC;
 cmd.arg = 0;
 cmd.data = &data;

 data.data = rawsdstatus;
 data.len = 64;
 data.flags = MMC_DATA_READ;

 err = mmc_wait_for_app_cmd(sc->dev, sc->dev, rca, &cmd, CMD_RETRIES);
 for (i = 0; i < 16; i++)
     rawsdstatus[i] = be32toh(rawsdstatus[i]);
 return (err);
}
