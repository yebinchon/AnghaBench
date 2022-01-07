
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID2_MON ;
 int CPUID5_MON_MWAIT_EXT ;
 int CPUID5_MWAIT_INTRBREAK ;
 int cpu_feature2 ;
 int cpu_mon_mwait_flags ;

bool
cpu_mwait_usable(void)
{

 return ((cpu_feature2 & CPUID2_MON) != 0 && ((cpu_mon_mwait_flags &
     (CPUID5_MON_MWAIT_EXT | CPUID5_MWAIT_INTRBREAK)) ==
     (CPUID5_MON_MWAIT_EXT | CPUID5_MWAIT_INTRBREAK)));
}
