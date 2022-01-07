
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
br_mispredict(struct counters *cpu, int pos)
{
 struct counters *brctr;
 struct counters *unhalt;
 int ret;

 double br, un, con, res;
 con = 20.0;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
        brctr = find_counter(cpu, "BR_MISP_RETIRED.ALL_BRANCHES");
 if (pos != -1) {
  br = brctr->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  br = brctr->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (con * br)/un;
  ret = printf("%1.3f", res);
 return(ret);
}
