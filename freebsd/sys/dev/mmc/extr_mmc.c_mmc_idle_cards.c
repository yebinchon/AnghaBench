
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dev; } ;
struct mmc_command {int flags; int * data; scalar_t__ arg; int opcode; } ;
typedef int device_t ;
typedef int cmd ;


 int CMD_RETRIES ;
 int MMC_CMD_BC ;
 int MMC_GO_IDLE_STATE ;
 int MMC_RSP_NONE ;
 int cs_dontcare ;
 int cs_high ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_ms_delay (int) ;
 int mmc_wait_for_cmd (int ,int ,struct mmc_command*,int ) ;
 int mmcbr_set_chip_select (int ,int ) ;
 int mmcbr_update_ios (int ) ;

__attribute__((used)) static void
mmc_idle_cards(struct mmc_softc *sc)
{
 device_t dev;
 struct mmc_command cmd;

 dev = sc->dev;
 mmcbr_set_chip_select(dev, cs_high);
 mmcbr_update_ios(dev);
 mmc_ms_delay(1);

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = MMC_GO_IDLE_STATE;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_NONE | MMC_CMD_BC;
 cmd.data = ((void*)0);
 mmc_wait_for_cmd(sc->dev, sc->dev, &cmd, CMD_RETRIES);
 mmc_ms_delay(1);

 mmcbr_set_chip_select(dev, cs_dontcare);
 mmcbr_update_ios(dev);
 mmc_ms_delay(1);
}
