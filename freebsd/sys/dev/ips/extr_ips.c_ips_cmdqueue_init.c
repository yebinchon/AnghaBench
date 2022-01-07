
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int max_cmds; int state; TYPE_2__* staticcmd; int free_cmd_list; int sg_dmatag; int command_dmatag; TYPE_2__* commandarray; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int id; int data_dmamap; int data_dmatag; int command_dmamap; int command_buffer; int command_phys_addr; TYPE_1__* sc; } ;
typedef TYPE_2__ ips_command_t ;


 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int IPS_COMMAND_LEN ;
 int IPS_OFFLINE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,int *,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int ips_cmd_dmaload ;
 int ips_cmdqueue_free (TYPE_1__*) ;
 scalar_t__ malloc (int,int ,int) ;
 int next ;

__attribute__((used)) static int ips_cmdqueue_init(ips_softc_t *sc)
{
 int i;
 ips_command_t *command;

 sc->commandarray = (ips_command_t *)malloc(sizeof(ips_command_t) *
     sc->max_cmds, M_DEVBUF, M_NOWAIT|M_ZERO);
 if (sc->commandarray == ((void*)0))
  return (ENOMEM);

 SLIST_INIT(&sc->free_cmd_list);
 for(i = 0; i < sc->max_cmds; i++){
  command = &sc->commandarray[i];
  command->id = i;
  command->sc = sc;

  if(bus_dmamem_alloc(sc->command_dmatag,&command->command_buffer,
      BUS_DMA_NOWAIT, &command->command_dmamap))
   goto error;
  bus_dmamap_load(sc->command_dmatag, command->command_dmamap,
    command->command_buffer,IPS_COMMAND_LEN,
    ips_cmd_dmaload, command, BUS_DMA_NOWAIT);
  if(!command->command_phys_addr){
   bus_dmamem_free(sc->command_dmatag,
       command->command_buffer, command->command_dmamap);
   goto error;
  }

  if (i != 0) {
   command->data_dmatag = sc->sg_dmatag;
   if (bus_dmamap_create(command->data_dmatag, 0,
       &command->data_dmamap))
    goto error;
   SLIST_INSERT_HEAD(&sc->free_cmd_list, command, next);
  } else
   sc->staticcmd = command;
 }
 sc->state &= ~IPS_OFFLINE;
 return 0;
error:
 ips_cmdqueue_free(sc);
 return ENOMEM;
}
