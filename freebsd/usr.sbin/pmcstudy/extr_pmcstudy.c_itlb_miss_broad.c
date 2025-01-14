
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
itlb_miss_broad(struct counters *cpu, int pos)
{

 int ret;
 struct counters *itlb;
 struct counters *unhalt;
 struct counters *four_k;
 double un, d1, res, k;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 itlb = find_counter(cpu, "ITLB_MISSES.WALK_DURATION");
 four_k = find_counter(cpu, "ITLB_MISSES.STLB_HIT_4K");
 if (pos != -1) {
  d1 = itlb->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
  k = four_k->vals[pos] * 1.0;
 } else {
  d1 = itlb->sum * 1.0;
  un = unhalt->sum * 1.0;
  k = four_k->sum * 1.0;
 }
 res = (7.0 * k + d1)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
