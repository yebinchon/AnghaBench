
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int cmd_sema; int (* ips_issue_cmd ) (TYPE_3__*) ;int command_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_10__ {int id; int command; } ;
typedef TYPE_2__ ips_generic_cmd ;
struct TYPE_11__ {int command_dmamap; int id; scalar_t__ command_buffer; int callback; TYPE_1__* sc; } ;
typedef TYPE_3__ ips_command_t ;


 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ COMMAND_ERROR (TYPE_3__*) ;
 int IPS_CACHE_FLUSH_CMD ;
 int PRINTF (int,char*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ips_insert_free_cmd (TYPE_1__*,TYPE_3__*) ;
 int ips_wakeup_callback ;
 int sema_wait (int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int ips_send_flush_cache_cmd(ips_command_t *command)
{
 ips_softc_t *sc = command->sc;
 ips_generic_cmd *command_struct;

 PRINTF(10,"ips test: got a command, building flush command\n");
 command->callback = ips_wakeup_callback;
 command_struct = (ips_generic_cmd *)command->command_buffer;
 command_struct->command = IPS_CACHE_FLUSH_CMD;
 command_struct->id = command->id;
 bus_dmamap_sync(sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_PREWRITE);
 sc->ips_issue_cmd(command);
 if (COMMAND_ERROR(command) == 0)
  sema_wait(&sc->cmd_sema);
 ips_insert_free_cmd(sc, command);
 return 0;
}
