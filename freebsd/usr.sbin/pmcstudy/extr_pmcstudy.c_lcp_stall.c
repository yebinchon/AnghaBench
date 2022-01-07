
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
lcp_stall(struct counters *cpu, int pos)
{

 int ret;
 struct counters *ild;
 struct counters *unhalt;
 double un, d1, res;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 ild = find_counter(cpu, "ILD_STALL.LCP");
 if (pos != -1) {
  d1 = ild->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  d1 = ild->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = d1/un;
 ret = printf("%1.3f", res);
 return(ret);

}
