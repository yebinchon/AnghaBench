
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int command_phys_addr; } ;
typedef TYPE_1__ ips_command_t ;
struct TYPE_5__ {int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;


 int PRINTF (int,char*) ;

__attribute__((used)) static void ips_cmd_dmaload(void *cmdptr, bus_dma_segment_t *segments,int segnum, int error)
{
 ips_command_t *command = cmdptr;
 PRINTF(10, "ips: in ips_cmd_dmaload\n");
 if(!error)
  command->command_phys_addr = segments[0].ds_addr;

}
