
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_cpu_stats {long user; long nice; long system; long intr; long idle; } ;
typedef int cp_time ;


 int CPUSTATES ;
 size_t CP_IDLE ;
 size_t CP_INTR ;
 size_t CP_NICE ;
 size_t CP_SYS ;
 size_t CP_USER ;
 int sysctlbyname (char*,long**,size_t*,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
getcpu(struct ctl_cpu_stats *cpu_stats)
{
 long cp_time[CPUSTATES];
 size_t cplen;

 cplen = sizeof(cp_time);

 if (sysctlbyname("kern.cp_time", &cp_time, &cplen, ((void*)0), 0) == -1) {
  warn("sysctlbyname(kern.cp_time...) failed");
  return (1);
 }

 cpu_stats->user = cp_time[CP_USER];
 cpu_stats->nice = cp_time[CP_NICE];
 cpu_stats->system = cp_time[CP_SYS];
 cpu_stats->intr = cp_time[CP_INTR];
 cpu_stats->idle = cp_time[CP_IDLE];

 return (0);
}
