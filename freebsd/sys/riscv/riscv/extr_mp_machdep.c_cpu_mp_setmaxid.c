
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUS_FDT ;
 int MAXCPU ;
 int MIN (int,int ) ;
 scalar_t__ bootverbose ;
 int cpu_check_mmu ;
 int cpu_enum_method ;
 int mp_maxid ;
 int mp_ncpus ;
 int ofw_cpu_early_foreach (int ,int) ;
 int printf (char*,...) ;

void
cpu_mp_setmaxid(void)
{
 if (bootverbose)
  printf("No CPU data, limiting to 1 core\n");
 mp_ncpus = 1;
 mp_maxid = 0;
}
