
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mr_op; } ;


 int CPUID_MTRR ;
 int cpu_feature ;
 TYPE_1__ mem_range_softc ;
 scalar_t__ mtrrs_disabled ;
 int x86_mrinit (TYPE_1__*) ;
 int x86_mrops ;

__attribute__((used)) static void
x86_mem_drvinit(void *unused)
{

 if (mtrrs_disabled)
  return;
 if (!(cpu_feature & CPUID_MTRR))
  return;
 mem_range_softc.mr_op = &x86_mrops;
 x86_mrinit(&mem_range_softc);
}
