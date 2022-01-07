
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int datasize; int data_buffer; int dmamap; int dmatag; int command_buffer; } ;
typedef TYPE_1__ ips_ioctl_t ;
typedef int ips_generic_cmd ;
struct TYPE_6__ {int callback; int command_buffer; TYPE_1__* arg; } ;
typedef TYPE_2__ ips_command_t ;


 int bus_dmamap_load (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int ips_ioctl_callback ;
 int ips_ioctl_finish ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int ips_ioctl_start(ips_command_t *command)
{
 ips_ioctl_t *ioctl_cmd = command->arg;
 memcpy(command->command_buffer, ioctl_cmd->command_buffer,
  sizeof(ips_generic_cmd));
 command->callback = ips_ioctl_finish;
 bus_dmamap_load(ioctl_cmd->dmatag, ioctl_cmd->dmamap,
   ioctl_cmd->data_buffer,ioctl_cmd->datasize,
   ips_ioctl_callback, command, 0);
 return 0;
}
