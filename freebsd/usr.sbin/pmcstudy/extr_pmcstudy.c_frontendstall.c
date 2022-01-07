
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
frontendstall(struct counters *cpu, int pos)
{

 int ret;
 struct counters *idq;
 struct counters *unhalt;
 double con, un, id, res;

 con = 4.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 idq = find_counter(cpu, "IDQ_UOPS_NOT_DELIVERED.CORE");
 if (pos != -1) {
  id = idq->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  id = idq->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = id/(un * con);
 ret = printf("%1.3f", res);
 return(ret);
}
