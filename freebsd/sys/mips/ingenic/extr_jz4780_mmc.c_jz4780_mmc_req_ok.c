
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_command {int error; TYPE_2__* data; } ;
struct jz4780_mmc_softc {int sc_resid; TYPE_1__* sc_req; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {struct mmc_command* cmd; } ;


 int MMC_ERR_FAILED ;
 int jz4780_mmc_req_done (struct jz4780_mmc_softc*) ;

__attribute__((used)) static void
jz4780_mmc_req_ok(struct jz4780_mmc_softc *sc)
{
 struct mmc_command *cmd;

 cmd = sc->sc_req->cmd;

 if (cmd->data != ((void*)0) && (sc->sc_resid << 2) < cmd->data->len)
  cmd->error = MMC_ERR_FAILED;
 jz4780_mmc_req_done(sc);
}
