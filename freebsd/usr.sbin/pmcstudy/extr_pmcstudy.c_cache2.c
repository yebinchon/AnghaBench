
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
cache2(struct counters *cpu, int pos)
{




 int ret;
 struct counters *mem1, *mem2, *mem3;
 struct counters *unhalt;
 double con1, con2, con3, un, me_1, me_2, me_3, res;

 con1 = 26.0;
 con2 = 43.0;
 con3 = 60.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");

 mem1 = find_counter(cpu, "MEM_LOAD_UOPS_RETIRED.LLC_HIT");
 mem2 = find_counter(cpu, "MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT");
 mem3 = find_counter(cpu, "MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM");
 if (pos != -1) {
  me_1 = mem1->vals[pos] * 1.0;
  me_2 = mem2->vals[pos] * 1.0;
  me_3 = mem3->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  me_1 = mem1->sum * 1.0;
  me_2 = mem2->sum * 1.0;
  me_3 = mem3->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = ((me_1 * con1) + (me_2 * con2) + (me_3 * con3))/un;
 ret = printf("%1.3f", res);
 return(ret);
}
