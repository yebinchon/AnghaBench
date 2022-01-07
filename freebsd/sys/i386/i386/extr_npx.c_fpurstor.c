
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 scalar_t__ cpu_fxsr ;
 int frstor (union savefpu*) ;
 int fxrstor (union savefpu*) ;
 scalar_t__ use_xsave ;
 int xrstor (char*,int ) ;
 int xsave_mask ;

__attribute__((used)) static void
fpurstor(union savefpu *addr)
{

 if (use_xsave)
  xrstor((char *)addr, xsave_mask);
 else if (cpu_fxsr)
  fxrstor(addr);
 else
  frstor(addr);
}
