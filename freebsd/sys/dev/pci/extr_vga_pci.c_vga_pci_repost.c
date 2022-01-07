
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AL; int R_DL; int R_AH; } ;
typedef TYPE_1__ x86regs_t ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ VGA_PCI_BIOS_SHADOW_ADDR ;
 int X86BIOS_PHYSTOOFF (scalar_t__) ;
 int X86BIOS_PHYSTOSEG (scalar_t__) ;
 int device_printf (int ,char*) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int vga_pci_is_boot_display (int ) ;
 int x86bios_call (TYPE_1__*,int ,int ) ;
 int x86bios_get_intr (int) ;
 int * x86bios_get_orm (scalar_t__) ;
 int x86bios_init_regs (TYPE_1__*) ;

int
vga_pci_repost(device_t dev)
{

 x86regs_t regs;

 if (!vga_pci_is_boot_display(dev))
  return (EINVAL);

 if (x86bios_get_orm(VGA_PCI_BIOS_SHADOW_ADDR) == ((void*)0))
  return (ENOTSUP);

 x86bios_init_regs(&regs);

 regs.R_AH = pci_get_bus(dev);
 regs.R_AL = (pci_get_slot(dev) << 3) | (pci_get_function(dev) & 0x07);
 regs.R_DL = 0x80;

 device_printf(dev, "REPOSTing\n");
 x86bios_call(&regs, X86BIOS_PHYSTOSEG(VGA_PCI_BIOS_SHADOW_ADDR + 3),
     X86BIOS_PHYSTOOFF(VGA_PCI_BIOS_SHADOW_ADDR + 3));

 x86bios_get_intr(0x10);

 return (0);



}
