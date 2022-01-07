
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_CX; int R_BX; } ;
typedef TYPE_1__ x86regs_t ;


 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static size_t
vesa_bios_state_buf_size(int state)
{
 x86regs_t regs;

 x86bios_init_regs(&regs);
 regs.R_AX = 0x4f04;

 regs.R_CX = state;

 x86bios_intr(&regs, 0x10);

 if (regs.R_AX != 0x004f)
  return (0);

 return (regs.R_BX * 64);
}
