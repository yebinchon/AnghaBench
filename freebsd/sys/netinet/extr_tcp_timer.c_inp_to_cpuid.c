
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct inpcb {int inp_flowid; int inp_flowtype; } ;


 int CPU_ABSENT (int) ;
 int NETISR_CPUID_NONE ;
 int curcpu ;
 int mp_maxid ;
 scalar_t__ per_cpu_timers ;
 int rss_hash2cpuid (int,int ) ;

inline int
inp_to_cpuid(struct inpcb *inp)
{
 u_int cpuid;
 if (per_cpu_timers) {





  cpuid = inp->inp_flowid % (mp_maxid + 1);
  if (! CPU_ABSENT(cpuid))
   return (cpuid);
  return (curcpu);
 }


 else {
  return (0);
 }
}
