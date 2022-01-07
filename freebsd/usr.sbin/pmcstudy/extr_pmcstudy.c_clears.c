
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
clears(struct counters *cpu, int pos)
{



 int ret;
 struct counters *clr1, *clr2, *clr3;
 struct counters *unhalt;
 double con, un, cl1, cl2, cl3, res;

 con = 100.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 clr1 = find_counter(cpu, "MACHINE_CLEARS.MEMORY_ORDERING");
 clr2 = find_counter(cpu, "MACHINE_CLEARS.SMC");
 clr3 = find_counter(cpu, "MACHINE_CLEARS.MASKMOV");

 if (pos != -1) {
  cl1 = clr1->vals[pos] * 1.0;
  cl2 = clr2->vals[pos] * 1.0;
  cl3 = clr3->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  cl1 = clr1->sum * 1.0;
  cl2 = clr2->sum * 1.0;
  cl3 = clr3->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = ((cl1 + cl2 + cl3) * con)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
