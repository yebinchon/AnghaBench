
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


 int ACMD_SEND_SCR ;
 int CMD_RETRIES ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_RSP_R1 ;
 struct mmc_data be32toh (struct mmc_data) ;
 int memset (struct mmc_data*,int ,int) ;
 int mmc_wait_for_app_cmd (int ,int ,int ,struct mmc_data*,int ) ;

__attribute__((used)) static int
mmc_app_send_scr(struct mmc_softc *sc, uint16_t rca, uint32_t *rawscr)
{
 int err;
 struct mmc_command cmd;
 struct mmc_data data;

 memset(&cmd, 0, sizeof(cmd));
 memset(&data, 0, sizeof(data));

 memset(rawscr, 0, 8);
 cmd.opcode = ACMD_SEND_SCR;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_ADTC;
 cmd.arg = 0;
 cmd.data = &data;

 data.data = rawscr;
 data.len = 8;
 data.flags = MMC_DATA_READ;

 err = mmc_wait_for_app_cmd(sc->dev, sc->dev, rca, &cmd, CMD_RETRIES);
 rawscr[0] = be32toh(rawscr[0]);
 rawscr[1] = be32toh(rawscr[1]);
 return (err);
}
