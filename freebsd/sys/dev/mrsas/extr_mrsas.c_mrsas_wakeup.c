
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mrsas_softc {void* chan; } ;
struct mrsas_mfi_cmd {int cmd_status; TYPE_2__* frame; } ;
struct TYPE_3__ {int cmd_status; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 int wakeup_one (void*) ;

void
mrsas_wakeup(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
 cmd->cmd_status = cmd->frame->io.cmd_status;

 if (cmd->cmd_status == 0xFF)
  cmd->cmd_status = 0;

 sc->chan = (void *)&cmd;
 wakeup_one((void *)&sc->chan);
 return;
}
