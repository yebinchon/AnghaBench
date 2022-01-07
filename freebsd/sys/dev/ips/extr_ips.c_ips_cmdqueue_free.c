
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max_cmds; TYPE_2__* commandarray; int * staticcmd; int state; int command_dmatag; int used_commands; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_6__ {scalar_t__ command_phys_addr; int * data_dmamap; int data_dmatag; int command_dmamap; int command_buffer; } ;
typedef TYPE_2__ ips_command_t ;


 int IPS_OFFLINE ;
 int M_DEVBUF ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int free (TYPE_2__*,int ) ;

__attribute__((used)) static int ips_cmdqueue_free(ips_softc_t *sc)
{
 int i, error = -1;
 ips_command_t *command;

 if(!sc->used_commands){
  for(i = 0; i < sc->max_cmds; i++){

   command = &sc->commandarray[i];

   if(command->command_phys_addr == 0)
    continue;
   bus_dmamap_unload(sc->command_dmatag,
       command->command_dmamap);
   bus_dmamem_free(sc->command_dmatag,
     command->command_buffer,
     command->command_dmamap);
   if (command->data_dmamap != ((void*)0))
    bus_dmamap_destroy(command->data_dmatag,
        command->data_dmamap);
  }
  error = 0;
  sc->state |= IPS_OFFLINE;
 }
 sc->staticcmd = ((void*)0);
 free(sc->commandarray, M_DEVBUF);
 return error;
}
