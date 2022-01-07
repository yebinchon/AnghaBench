
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {void* chan; } ;
struct mrsas_mfi_cmd {scalar_t__ cmd_status; scalar_t__ sync_cmd; } ;


 int wakeup_one (void*) ;

void
mrsas_complete_abort(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
 if (cmd->sync_cmd) {
  cmd->sync_cmd = 0;
  cmd->cmd_status = 0;
  sc->chan = (void *)&cmd;
  wakeup_one((void *)&sc->chan);
 }
 return;
}
