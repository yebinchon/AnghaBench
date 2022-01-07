
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
struct TYPE_6__ {int data_dmamap; int data_dmatag; TYPE_1__ status; } ;
typedef TYPE_2__ ips_command_t ;


 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ COMMAND_ERROR (TYPE_2__*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void
ipsd_dump_block_complete(ips_command_t *command)
{

 if (COMMAND_ERROR(command))
  printf("ipsd_dump completion error= 0x%x\n",
      command->status.value);

 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
     BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(command->data_dmatag, command->data_dmamap);
}
