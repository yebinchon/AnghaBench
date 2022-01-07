
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;
typedef int register_t ;


 int * PCPU_GET (int ) ;
 int bcopy (int ,union savefpu*,int ) ;
 int cpu_max_ext_state_size ;
 int fpcurthread ;
 int fpusave (union savefpu*) ;
 int hw_float ;
 int load_cr0 (int ) ;
 int npx_initialstate ;
 int rcr0 () ;
 int stop_emulating () ;

void
npxsuspend(union savefpu *addr)
{
 register_t cr0;

 if (!hw_float)
  return;
 if (PCPU_GET(fpcurthread) == ((void*)0)) {
  bcopy(npx_initialstate, addr, cpu_max_ext_state_size);
  return;
 }
 cr0 = rcr0();
 stop_emulating();
 fpusave(addr);
 load_cr0(cr0);
}
