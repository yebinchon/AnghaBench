
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
icache_miss_has(struct counters *cpu, int pos)
{


 int ret;
 struct counters *icache;
 struct counters *unhalt;
 double un, con, ic, res;

 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 icache = find_counter(cpu, "ICACHE.MISSES");
 con = 36.0;
 if (pos != -1) {
  ic = icache->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  ic = icache->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (con * ic)/un;
 ret = printf("%1.3f", res);
 return(ret);

}
