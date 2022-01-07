
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int drivecount; int dev; int drives; int cmd_sema; int (* ips_issue_cmd ) (TYPE_4__*) ;int command_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_drive_t ;
struct TYPE_10__ {int drivecount; int drives; } ;
typedef TYPE_2__ ips_drive_info_t ;
struct TYPE_11__ {int buffaddr; int id; int command; } ;
typedef TYPE_3__ ips_drive_cmd ;
struct TYPE_12__ {TYPE_2__* data_buffer; int data_dmamap; int data_dmatag; int command_dmamap; int id; scalar_t__ command_buffer; TYPE_1__* sc; } ;
typedef TYPE_4__ ips_command_t ;
struct TYPE_13__ {int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETIMEDOUT ;
 int IPS_DRIVE_INFO_CMD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int ) ;
 int hz ;
 int ips_set_error (TYPE_4__*,int) ;
 int memcpy (int ,int ,int) ;
 int printf (char*,int) ;
 scalar_t__ sema_timedwait (int *,int) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void ips_drive_info_callback(void *cmdptr, bus_dma_segment_t *segments,int segnum, int error)
{
 ips_softc_t *sc;
 ips_command_t *command = cmdptr;
 ips_drive_cmd *command_struct;
 ips_drive_info_t *driveinfo;

 sc = command->sc;
 if(error){
  ips_set_error(command, error);
  printf("ips: error = %d in ips_get_drive_info\n", error);
  return;
 }
 command_struct = (ips_drive_cmd *)command->command_buffer;
 command_struct->command = IPS_DRIVE_INFO_CMD;
 command_struct->id = command->id;
 command_struct->buffaddr = segments[0].ds_addr;

 bus_dmamap_sync(sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
   BUS_DMASYNC_PREREAD);
 sc->ips_issue_cmd(command);
 if (sema_timedwait(&sc->cmd_sema, 10*hz) != 0) {
  ips_set_error(command, ETIMEDOUT);
  return;
 }

 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
   BUS_DMASYNC_POSTREAD);
 driveinfo = command->data_buffer;
 memcpy(sc->drives, driveinfo->drives, sizeof(ips_drive_t) * 8);
 sc->drivecount = driveinfo->drivecount;
 device_printf(sc->dev, "logical drives: %d\n",sc->drivecount);
}
