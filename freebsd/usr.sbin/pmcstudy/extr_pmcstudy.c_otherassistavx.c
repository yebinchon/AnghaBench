
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
otherassistavx(struct counters *cpu, int pos)
{

 int ret;
 struct counters *oth;
 struct counters *unhalt;
 double un, ot, con, res;

 con = 75.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 oth = find_counter(cpu, "OTHER_ASSISTS.AVX_TO_SSE");
 if (pos != -1) {
  ot = oth->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  ot = oth->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (ot * con)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
