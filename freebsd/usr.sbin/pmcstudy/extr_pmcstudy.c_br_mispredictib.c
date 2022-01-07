
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
br_mispredictib(struct counters *cpu, int pos)
{
 struct counters *brctr;
 struct counters *unhalt;
 struct counters *clear, *clear2, *clear3;
 struct counters *uops;
 struct counters *recv;
 struct counters *iss;

 int ret;







 double br, cl, cl2, cl3, uo, re, un, con, res, is;
 con = 4.0;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
        brctr = find_counter(cpu, "BR_MISP_RETIRED.ALL_BRANCHES");
 clear = find_counter(cpu, "MACHINE_CLEARS.MEMORY_ORDERING");
 clear2 = find_counter(cpu, "MACHINE_CLEARS.SMC");
 clear3 = find_counter(cpu, "MACHINE_CLEARS.MASKMOV");
 uops = find_counter(cpu, "UOPS_RETIRED.RETIRE_SLOTS");
 iss = find_counter(cpu, "UOPS_ISSUED.ANY");
 recv = find_counter(cpu, "INT_MISC.RECOVERY_CYCLES");
 if (pos != -1) {
  br = brctr->vals[pos] * 1.0;
  cl = clear->vals[pos] * 1.0;
  cl2 = clear2->vals[pos] * 1.0;
  cl3 = clear3->vals[pos] * 1.0;
  uo = uops->vals[pos] * 1.0;
  re = recv->vals[pos] * 1.0;
  is = iss->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  br = brctr->sum * 1.0;
  cl = clear->sum * 1.0;
  cl2 = clear2->sum * 1.0;
  cl3 = clear3->sum * 1.0;
  uo = uops->sum * 1.0;
  re = recv->sum * 1.0;
  is = iss->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (br/(br + cl + cl2 + cl3) * ((is - uo + con * re) / (con * un)));
  ret = printf("%1.3f", res);
 return(ret);
}
