
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set ;
typedef int cpuset_t ;


 int CPU_LEVEL_WHICH ;
 int CPU_SET (int,int *) ;
 int CPU_WHICH_TID ;
 int CPU_ZERO (int *) ;
 scalar_t__ cpuset_setaffinity (int ,int ,int,int,int *) ;
 int err (int,char*,int) ;

__attribute__((used)) static void
bind_cpu(int cpu)
{
 cpuset_t set;

 CPU_ZERO(&set);
 CPU_SET(cpu, &set);
 if (cpuset_setaffinity(CPU_LEVEL_WHICH, CPU_WHICH_TID, -1, sizeof(set),
     &set) < 0)
  err(1, "cpuset_setaffinity(%d)", cpu);
}
