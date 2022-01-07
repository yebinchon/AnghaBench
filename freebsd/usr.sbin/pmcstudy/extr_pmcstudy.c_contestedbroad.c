
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
contestedbroad(struct counters *cpu, int pos)
{

 int ret;
 struct counters *mem;
 struct counters *mem2;
 struct counters *unhalt;
 double con, un, memd, memtoo, res;

 con = 84.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 mem = find_counter(cpu, "MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM");
 mem2 = find_counter(cpu,"MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_MISS");

 if (pos != -1) {
  memd = mem->vals[pos] * 1.0;
  memtoo = mem2->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  memd = mem->sum * 1.0;
  memtoo = mem2->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = ((memd * con) + memtoo)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
