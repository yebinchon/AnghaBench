
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int adapter_info; int cmd_sema; int (* ips_issue_cmd ) (TYPE_2__*) ;int command_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_9__ {int data_buffer; int data_dmamap; int data_dmatag; int command_dmamap; int id; scalar_t__ command_buffer; TYPE_1__* sc; } ;
typedef TYPE_2__ ips_command_t ;
struct TYPE_10__ {int buffaddr; int id; int command; } ;
typedef TYPE_3__ ips_adapter_info_cmd ;
struct TYPE_11__ {int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETIMEDOUT ;
 int IPS_ADAPTER_INFO_CMD ;
 int IPS_ADAPTER_INFO_LEN ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int hz ;
 int ips_set_error (TYPE_2__*,int) ;
 int memcpy (int *,int ,int ) ;
 int printf (char*,int) ;
 scalar_t__ sema_timedwait (int *,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ips_adapter_info_callback(void *cmdptr, bus_dma_segment_t *segments,int segnum, int error)
{
 ips_softc_t *sc;
 ips_command_t *command = cmdptr;
 ips_adapter_info_cmd *command_struct;
 sc = command->sc;
 if(error){
  ips_set_error(command, error);
  printf("ips: error = %d in ips_get_adapter_info\n", error);
  return;
 }
 command_struct = (ips_adapter_info_cmd *)command->command_buffer;
 command_struct->command = IPS_ADAPTER_INFO_CMD;
 command_struct->id = command->id;
 command_struct->buffaddr = segments[0].ds_addr;

 bus_dmamap_sync(sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
   BUS_DMASYNC_PREREAD);
 sc->ips_issue_cmd(command);
 if (sema_timedwait(&sc->cmd_sema, 30*hz) != 0) {
  ips_set_error(command, ETIMEDOUT);
  return;
 }

 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
   BUS_DMASYNC_POSTREAD);
 memcpy(&(sc->adapter_info), command->data_buffer, IPS_ADAPTER_INFO_LEN);
}
