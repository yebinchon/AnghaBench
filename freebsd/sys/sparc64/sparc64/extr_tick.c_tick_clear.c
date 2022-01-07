
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ CPU_IMPL_SPARC64V ;
 scalar_t__ CPU_IMPL_ULTRASPARCIII ;
 int tick ;
 int wrpr (int ,int ,int ) ;
 int wrstick (int ,int ) ;

void
tick_clear(u_int cpu_impl)
{

 if (cpu_impl == CPU_IMPL_SPARC64V ||
     cpu_impl >= CPU_IMPL_ULTRASPARCIII)
  wrstick(0, 0);
 wrpr(tick, 0, 0);
}
