
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
efficiency1(struct counters *cpu, int pos)
{

 int ret;
 struct counters *uops;
 struct counters *unhalt;
 double un, ot, con, res;


 con = 4.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 uops = find_counter(cpu, "UOPS_RETIRED.RETIRE_SLOTS");
 if (pos != -1) {
  ot = uops->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  ot = uops->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = ot/(con * un);
 ret = printf("%1.3f", res);
 return(ret);
}
