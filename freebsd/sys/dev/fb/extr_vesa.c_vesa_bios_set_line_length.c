
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_CX; int R_BX; int R_DX; } ;
typedef TYPE_1__ x86regs_t ;


 int printf (char*,int,int,int) ;
 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static int
vesa_bios_set_line_length(int pixel, int *bytes, int *lines)
{
 x86regs_t regs;

 x86bios_init_regs(&regs);
 regs.R_AX = 0x4f06;

 regs.R_CX = pixel;

 x86bios_intr(&regs, 0x10);




 if (regs.R_AX != 0x004f)
  return (-1);

 if (bytes != ((void*)0))
  *bytes = regs.R_BX;
 if (lines != ((void*)0))
  *lines = regs.R_DX;

 return (0);
}
