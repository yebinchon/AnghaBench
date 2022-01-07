
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; void** resp; } ;
struct dwmmc_softc {struct mmc_command* curcmd; } ;


 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 void* READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_RESP0 ;
 int SDMMC_RESP1 ;
 int SDMMC_RESP2 ;
 int SDMMC_RESP3 ;

__attribute__((used)) static void
dwmmc_cmd_done(struct dwmmc_softc *sc)
{
 struct mmc_command *cmd;

 cmd = sc->curcmd;
 if (cmd == ((void*)0))
  return;

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   cmd->resp[3] = READ4(sc, SDMMC_RESP0);
   cmd->resp[2] = READ4(sc, SDMMC_RESP1);
   cmd->resp[1] = READ4(sc, SDMMC_RESP2);
   cmd->resp[0] = READ4(sc, SDMMC_RESP3);
  } else {
   cmd->resp[3] = 0;
   cmd->resp[2] = 0;
   cmd->resp[1] = 0;
   cmd->resp[0] = READ4(sc, SDMMC_RESP0);
  }
 }
}
