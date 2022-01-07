
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ CPU_IMPL_SPARC64V ;
 scalar_t__ CPU_IMPL_ULTRASPARCIII ;
 int wrstickcmpr (long,int ) ;
 int wrtickcmpr (long,int ) ;

void
tick_stop(u_int cpu_impl)
{

 if (cpu_impl == CPU_IMPL_SPARC64V ||
     cpu_impl >= CPU_IMPL_ULTRASPARCIII)
  wrstickcmpr(1L << 63, 0);
 wrtickcmpr(1L << 63, 0);
}
