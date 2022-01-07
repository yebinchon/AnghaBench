
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cmd_sema; int (* ips_issue_cmd ) (TYPE_3__*) ;int command_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_9__ {int pagenum; int buffaddr; scalar_t__ rw; int id; int command; } ;
typedef TYPE_2__ ips_rw_nvram_cmd ;
struct TYPE_10__ {int data_dmamap; int data_dmatag; int command_dmamap; int id; scalar_t__ command_buffer; TYPE_1__* sc; } ;
typedef TYPE_3__ ips_command_t ;
struct TYPE_11__ {int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETIMEDOUT ;
 int IPS_RW_NVRAM_CMD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int hz ;
 int ips_set_error (TYPE_3__*,int) ;
 int printf (char*,int) ;
 scalar_t__ sema_timedwait (int *,int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void ips_read_nvram_callback(void *cmdptr, bus_dma_segment_t *segments,int segnum, int error)
{
 ips_softc_t *sc;
 ips_command_t *command = cmdptr;
 ips_rw_nvram_cmd *command_struct;
 sc = command->sc;
 if(error){
  ips_set_error(command, error);
  printf("ips: error = %d in ips_read_nvram_callback\n", error);
  return;
 }
 command_struct = (ips_rw_nvram_cmd *)command->command_buffer;
 command_struct->command = IPS_RW_NVRAM_CMD;
 command_struct->id = command->id;
 command_struct->pagenum = 5;
 command_struct->rw = 0;
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
   BUS_DMASYNC_POSTWRITE);
}
