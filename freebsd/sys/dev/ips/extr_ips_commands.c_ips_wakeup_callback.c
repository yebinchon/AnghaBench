
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc; int command_dmamap; } ;
typedef TYPE_2__ ips_command_t ;
struct TYPE_4__ {int cmd_sema; int command_dmatag; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int sema_post (int *) ;

__attribute__((used)) static void ips_wakeup_callback(ips_command_t *command)
{
 bus_dmamap_sync(command->sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_POSTWRITE);
 sema_post(&command->sc->cmd_sema);
}
