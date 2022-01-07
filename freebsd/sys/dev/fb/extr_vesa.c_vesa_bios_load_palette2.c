
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_CX; int R_DX; int R_DI; int R_ES; } ;
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
vesa_bios_load_palette2(int start, int colors, u_char *r, u_char *g, u_char *b,
   int bits)
{
 x86regs_t regs;
 int i;

 x86bios_init_regs(&regs);
 regs.R_AX = 0x4f09;

 regs.R_CX = colors;
 regs.R_DX = start;

 regs.R_ES = X86BIOS_PHYSTOSEG(vesa_palette_offs);
 regs.R_DI = X86BIOS_PHYSTOOFF(vesa_palette_offs);

 bits = 8 - bits;
 mtx_lock(&vesa_lock);
 for (i = 0; i < colors; ++i) {
  vesa_palette[i * 4] = b[i] >> bits;
  vesa_palette[i * 4 + 1] = g[i] >> bits;
  vesa_palette[i * 4 + 2] = r[i] >> bits;
  vesa_palette[i * 4 + 3] = 0;
 }
 x86bios_intr(&regs, 0x10);
 mtx_unlock(&vesa_lock);

 return (regs.R_AX != 0x004f);
}
