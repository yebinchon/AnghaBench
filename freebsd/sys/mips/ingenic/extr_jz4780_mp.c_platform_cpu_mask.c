
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int cpuset_t ;


 int CPU_SET (scalar_t__,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ JZ4780_MAXCPU ;

void
platform_cpu_mask(cpuset_t *mask)
{
 uint32_t i, m;

 CPU_ZERO(mask);
 for (i = 0, m = 1 ; i < JZ4780_MAXCPU; i++, m <<= 1)
  CPU_SET(i, mask);
}
