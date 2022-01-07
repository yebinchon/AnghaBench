
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_10__ {int readwrite; TYPE_1__ status; int dmamap; int dmatag; } ;
typedef TYPE_3__ ips_ioctl_t ;
struct TYPE_9__ {int value; } ;
struct TYPE_11__ {TYPE_6__* sc; TYPE_2__ status; int command_dmamap; TYPE_3__* arg; } ;
typedef TYPE_4__ ips_command_t ;
struct TYPE_12__ {int command_dmatag; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IPS_IOCTL_READ ;
 int IPS_IOCTL_WRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ips_insert_free_cmd (TYPE_6__*,TYPE_4__*) ;

__attribute__((used)) static void ips_ioctl_finish(ips_command_t *command)
{
 ips_ioctl_t *ioctl_cmd = command->arg;
 if(ioctl_cmd->readwrite & IPS_IOCTL_READ){
  bus_dmamap_sync(ioctl_cmd->dmatag, ioctl_cmd->dmamap,
    BUS_DMASYNC_POSTREAD);
 } else if(ioctl_cmd->readwrite & IPS_IOCTL_WRITE){
  bus_dmamap_sync(ioctl_cmd->dmatag, ioctl_cmd->dmamap,
    BUS_DMASYNC_POSTWRITE);
 }
 bus_dmamap_sync(command->sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(ioctl_cmd->dmatag, ioctl_cmd->dmamap);
 ioctl_cmd->status.value = command->status.value;
 ips_insert_free_cmd(command->sc, command);
}
