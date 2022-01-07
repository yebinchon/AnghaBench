
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {scalar_t__ error; scalar_t__ opcode; scalar_t__ data; } ;
struct dwmmc_softc {scalar_t__ acd_rcvd; scalar_t__ use_auto_stop; scalar_t__ dto_rcvd; int cmd_done; struct mmc_command* curcmd; } ;


 scalar_t__ MMC_ERR_NONE ;
 scalar_t__ MMC_READ_MULTIPLE_BLOCK ;
 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 int dwmmc_next_operation (struct dwmmc_softc*) ;

__attribute__((used)) static void
dwmmc_tasklet(struct dwmmc_softc *sc)
{
 struct mmc_command *cmd;

 cmd = sc->curcmd;
 if (cmd == ((void*)0))
  return;

 if (!sc->cmd_done)
  return;

 if (cmd->error != MMC_ERR_NONE || !cmd->data) {
  dwmmc_next_operation(sc);
 } else if (cmd->data && sc->dto_rcvd) {
  if ((cmd->opcode == MMC_WRITE_MULTIPLE_BLOCK ||
       cmd->opcode == MMC_READ_MULTIPLE_BLOCK) &&
       sc->use_auto_stop) {
   if (sc->acd_rcvd)
    dwmmc_next_operation(sc);
  } else {
   dwmmc_next_operation(sc);
  }
 }
}
