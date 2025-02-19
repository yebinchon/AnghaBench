
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
icache_miss(struct counters *cpu, int pos)
{


 int ret;
 struct counters *itlb, *icache;
 struct counters *unhalt;
 double un, d1, ic, res;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 itlb = find_counter(cpu, "ITLB_MISSES.WALK_DURATION");
 icache = find_counter(cpu, "ICACHE.IFETCH_STALL");
 if (pos != -1) {
  d1 = itlb->vals[pos] * 1.0;
  ic = icache->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  d1 = itlb->sum * 1.0;
  ic = icache->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (ic-d1)/un;
 ret = printf("%1.3f", res);
 return(ret);

}
