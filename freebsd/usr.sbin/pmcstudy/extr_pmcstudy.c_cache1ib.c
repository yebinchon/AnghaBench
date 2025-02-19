
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
cache1ib(struct counters *cpu, int pos)
{

 int ret;
 struct counters *mem;
 struct counters *unhalt;
 double con, un, me, res;

 con = 180.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 mem = find_counter(cpu, "MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM");
 if (pos != -1) {
  me = mem->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  me = mem->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (me * con)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
