
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bios_regs {int ebx; int ecx; int eax; } ;
struct TYPE_2__ {int ventry; } ;


 int GCODE_SEL ;
 int GSEL (int ,int ) ;
 int PCIBIOS_ROUTE_INTERRUPT ;
 TYPE_1__ PCIbios ;
 int SEL_KPL ;
 int bios32 (struct bios_regs*,int ,int ) ;

__attribute__((used)) static int
pci_pir_biosroute(int bus, int device, int func, int pin, int irq)
{
 struct bios_regs args;

 args.eax = PCIBIOS_ROUTE_INTERRUPT;
 args.ebx = (bus << 8) | (device << 3) | func;
 args.ecx = (irq << 8) | (0xa + pin);
 return (bios32(&args, PCIbios.ventry, GSEL(GCODE_SEL, SEL_KPL)));
}
