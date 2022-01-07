
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
allocstall1(struct counters *cpu, int pos)
{

 int ret;
 struct counters *partial;
 struct counters *unhalt;
 double un, par, res;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 partial = find_counter(cpu, "PARTIAL_RAT_STALLS.SLOW_LEA_WINDOW");
 if (pos != -1) {
  par = partial->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  par = partial->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = par/un;
 ret = printf("%1.3f", res);
 return(ret);
}
