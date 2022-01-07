
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AL; int R_DL; int R_AH; } ;
typedef TYPE_1__ x86regs_t ;
typedef int * device_t ;
typedef int * devclass_t ;


 int M_TEMP ;
 char* VGA_DRIVER_NAME ;
 int X86BIOS_PHYSTOOFF (scalar_t__) ;
 int X86BIOS_PHYSTOSEG (scalar_t__) ;
 scalar_t__ bootverbose ;
 int * devclass_find (char*) ;
 int * devclass_get_device (int *,int ) ;
 scalar_t__ devclass_get_devices (int *,int ***,int*) ;
 scalar_t__ device_get_flags (int *) ;
 char* device_get_nameunit (int *) ;
 int free (int **,int ) ;
 int pci_get_bus (int *) ;
 int pci_get_function (int *) ;
 int pci_get_slot (int *) ;
 int printf (char*,char*) ;
 scalar_t__ vesa_bios_offs ;
 int x86bios_call (TYPE_1__*,int ,int ) ;
 scalar_t__ x86bios_get_intr (int) ;
 int * x86bios_get_orm (scalar_t__) ;
 int x86bios_init_regs (TYPE_1__*) ;
 scalar_t__ x86bios_match_device (scalar_t__,int *) ;

__attribute__((used)) static int
vesa_bios_post(void)
{
 x86regs_t regs;
 devclass_t dc;
 device_t *devs;
 device_t dev;
 int count, i, is_pci;

 if (x86bios_get_orm(vesa_bios_offs) == ((void*)0))
  return (1);

 dev = ((void*)0);
 is_pci = 0;


 dc = devclass_find("vgapci");
 if (dc != ((void*)0) && devclass_get_devices(dc, &devs, &count) == 0) {
  for (i = 0; i < count; i++)
   if (device_get_flags(devs[i]) != 0 &&
       x86bios_match_device(vesa_bios_offs, devs[i])) {
    dev = devs[i];
    is_pci = 1;
    break;
   }
  free(devs, M_TEMP);
 }


 if (dev == ((void*)0)) {
  dc = devclass_find(VGA_DRIVER_NAME);
  if (dc != ((void*)0))
   dev = devclass_get_device(dc, 0);
 }

 if (bootverbose)
  printf("%s: calling BIOS POST\n",
      dev == ((void*)0) ? "VESA" : device_get_nameunit(dev));

 x86bios_init_regs(&regs);
 if (is_pci) {
  regs.R_AH = pci_get_bus(dev);
  regs.R_AL = (pci_get_slot(dev) << 3) |
      (pci_get_function(dev) & 0x07);
 }
 regs.R_DL = 0x80;
 x86bios_call(&regs, X86BIOS_PHYSTOSEG(vesa_bios_offs + 3),
     X86BIOS_PHYSTOOFF(vesa_bios_offs + 3));

 if (x86bios_get_intr(0x10) == 0)
  return (1);

 return (0);
}
