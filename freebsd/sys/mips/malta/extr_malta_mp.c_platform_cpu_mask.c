
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cpuset_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int MVPCONF0_PVPE_MASK ;
 int MVPCONF0_PVPE_SHIFT ;
 int mftc0 (int ,int) ;

void
platform_cpu_mask(cpuset_t *mask)
{
 uint32_t i, ncpus, reg;

 reg = mftc0(0, 2);
 ncpus = ((reg & MVPCONF0_PVPE_MASK) >> MVPCONF0_PVPE_SHIFT) + 1;

 CPU_ZERO(mask);
 for (i = 0; i < ncpus; i++)
  CPU_SET(i, mask);
}
