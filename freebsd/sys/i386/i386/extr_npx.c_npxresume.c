
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;
typedef int register_t ;


 int fpurstor (union savefpu*) ;
 int hw_float ;
 int load_cr0 (int ) ;
 int npxinit (int) ;
 int rcr0 () ;
 int stop_emulating () ;

void
npxresume(union savefpu *addr)
{
 register_t cr0;

 if (!hw_float)
  return;

 cr0 = rcr0();
 npxinit(0);
 stop_emulating();
 fpurstor(addr);
 load_cr0(cr0);
}
