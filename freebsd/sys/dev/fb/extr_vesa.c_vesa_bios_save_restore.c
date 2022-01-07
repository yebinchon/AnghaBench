
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AX; int R_DL; int R_BX; int R_ES; int R_CX; } ;
typedef TYPE_1__ x86regs_t ;




 int X86BIOS_PHYSTOOFF (int ) ;
 int X86BIOS_PHYSTOSEG (int ) ;
 int bcopy (void*,void*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vesa_lock ;
 int vesa_state ;
 void* vesa_state_buf ;
 int vesa_state_buf_offs ;
 int vesa_state_buf_size ;
 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static int
vesa_bios_save_restore(int code, void *p)
{
 x86regs_t regs;

 if (code != 128 && code != 129)
  return (1);

 x86bios_init_regs(&regs);
 regs.R_AX = 0x4f04;
 regs.R_DL = code;
 regs.R_CX = vesa_state;

 regs.R_ES = X86BIOS_PHYSTOSEG(vesa_state_buf_offs);
 regs.R_BX = X86BIOS_PHYSTOOFF(vesa_state_buf_offs);

 mtx_lock(&vesa_lock);
 switch (code) {
 case 128:
  x86bios_intr(&regs, 0x10);
  if (regs.R_AX == 0x004f)
   bcopy(vesa_state_buf, p, vesa_state_buf_size);
  break;
 case 129:
  bcopy(p, vesa_state_buf, vesa_state_buf_size);
  x86bios_intr(&regs, 0x10);
  break;
 }
 mtx_unlock(&vesa_lock);

 return (regs.R_AX != 0x004f);
}
