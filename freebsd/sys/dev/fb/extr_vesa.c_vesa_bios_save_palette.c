
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_BL; int R_CX; int R_DX; int R_DI; int R_ES; } ;
typedef TYPE_1__ x86regs_t ;
typedef int u_char ;


 int X86BIOS_PHYSTOOFF (int ) ;
 int X86BIOS_PHYSTOSEG (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vesa_lock ;
 int* vesa_palette ;
 int vesa_palette_offs ;
 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static int
vesa_bios_save_palette(int start, int colors, u_char *palette, int bits)
{
 x86regs_t regs;
 int i;

 x86bios_init_regs(&regs);
 regs.R_AX = 0x4f09;
 regs.R_BL = 1;
 regs.R_CX = colors;
 regs.R_DX = start;

 regs.R_ES = X86BIOS_PHYSTOSEG(vesa_palette_offs);
 regs.R_DI = X86BIOS_PHYSTOOFF(vesa_palette_offs);

 bits = 8 - bits;
 mtx_lock(&vesa_lock);
 x86bios_intr(&regs, 0x10);
 if (regs.R_AX != 0x004f) {
  mtx_unlock(&vesa_lock);
  return (1);
 }
 for (i = 0; i < colors; ++i) {
  palette[i * 3] = vesa_palette[i * 4 + 2] << bits;
  palette[i * 3 + 1] = vesa_palette[i * 4 + 1] << bits;
  palette[i * 3 + 2] = vesa_palette[i * 4] << bits;
 }
 mtx_unlock(&vesa_lock);

 return (0);
}
