
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_BL; int R_BH; } ;
typedef TYPE_1__ x86regs_t ;


 int ENXIO ;
 int VBE_DPMS_FUNCTION ;
 scalar_t__ x86bios_get_intr (int) ;
 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static int
dpms_call_bios(int subfunction, int *bh)
{
 x86regs_t regs;

 if (x86bios_get_intr(0x10) == 0)
  return (ENXIO);

 x86bios_init_regs(&regs);
 regs.R_AX = VBE_DPMS_FUNCTION;
 regs.R_BL = subfunction;
 regs.R_BH = *bh;
 x86bios_intr(&regs, 0x10);

 if (regs.R_AX != 0x004f)
  return (ENXIO);

 *bh = regs.R_BH;

 return (0);
}
