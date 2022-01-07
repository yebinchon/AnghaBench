
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* interrupt; int r_res1; } ;
struct TYPE_2__ {int argument; int (* function ) (int ) ;} ;


 int bus_read_2 (int ,int) ;
 int bus_write_2 (int ,int,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
imx_ata_intr(void *data)
{
 struct ata_pci_controller *ctrl = data;

 bus_write_2(ctrl->r_res1, 0x28, bus_read_2(ctrl->r_res1, 0x28));
 ctrl->interrupt[0].function(ctrl->interrupt[0].argument);
}
