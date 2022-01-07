
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int adapter_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int data_dmatag; int data_dmamap; int data_buffer; int callback; TYPE_1__* sc; } ;
typedef TYPE_2__ ips_command_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int IPS_ADAPTER_INFO_LEN ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,int *,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int ips_adapter_info_callback ;
 int ips_insert_free_cmd (TYPE_1__*,TYPE_2__*) ;
 int ips_wakeup_callback ;
 int printf (char*) ;

__attribute__((used)) static int ips_send_adapter_info_cmd(ips_command_t *command)
{
 int error = 0;
 ips_softc_t *sc = command->sc;

 if (bus_dma_tag_create( sc->adapter_dmatag,
                    1,
                    0,
                    BUS_SPACE_MAXADDR_32BIT,
                    BUS_SPACE_MAXADDR,
                    ((void*)0),
                    ((void*)0),
                    IPS_ADAPTER_INFO_LEN,
                    1,
                    IPS_ADAPTER_INFO_LEN,
                    0,
                    ((void*)0),
                    ((void*)0),
    &command->data_dmatag) != 0) {
                printf("ips: can't alloc dma tag for adapter status\n");
  error = ENOMEM;
  goto exit;
        }
 if(bus_dmamem_alloc(command->data_dmatag, &command->data_buffer,
    BUS_DMA_NOWAIT, &command->data_dmamap)){
  error = ENOMEM;
  goto exit;
 }
 command->callback = ips_wakeup_callback;
 error = bus_dmamap_load(command->data_dmatag, command->data_dmamap,
    command->data_buffer,IPS_ADAPTER_INFO_LEN,
    ips_adapter_info_callback, command,
    BUS_DMA_NOWAIT);

 if (error == 0)
  bus_dmamap_unload(command->data_dmatag, command->data_dmamap);

exit:

 bus_dmamem_free(command->data_dmatag, command->data_buffer,
   command->data_dmamap);
 bus_dma_tag_destroy(command->data_dmatag);
 ips_insert_free_cmd(sc, command);
 return error;
}
