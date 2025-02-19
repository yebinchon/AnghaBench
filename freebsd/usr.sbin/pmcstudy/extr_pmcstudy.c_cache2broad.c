
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
cache2broad(struct counters *cpu, int pos)
{



 int ret;
 struct counters *mem;
 struct counters *unhalt;
 double con, un, me, res;

 con = 36.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 mem = find_counter(cpu, "MEM_LOAD_UOPS_RETIRED.L3_HIT");
 if (pos != -1) {
  me = mem->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  me = mem->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (con * me)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
