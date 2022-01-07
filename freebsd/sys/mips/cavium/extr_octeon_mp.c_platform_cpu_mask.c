
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int cpuset_t ;
struct TYPE_2__ {scalar_t__ core_mask; } ;


 int CPU_SET (scalar_t__,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ MAXCPU ;
 TYPE_1__* cvmx_sysinfo_get () ;

void
platform_cpu_mask(cpuset_t *mask)
{
 uint64_t core_mask = cvmx_sysinfo_get()->core_mask;
 uint64_t i, m;

 CPU_ZERO(mask);
 for (i = 0, m = 1 ; i < MAXCPU; i++, m <<= 1)
  if (core_mask & m)
   CPU_SET(i, mask);
}
