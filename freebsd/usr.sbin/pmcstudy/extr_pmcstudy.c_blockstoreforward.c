
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
blockstoreforward(struct counters *cpu, int pos)
{

 int ret;
 struct counters *ldb;
 struct counters *unhalt;
 double con, un, ld, res;

 con = 13.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 ldb = find_counter(cpu, "LD_BLOCKS_STORE_FORWARD");
 if (pos != -1) {
  ld = ldb->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  ld = ldb->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (ld * con)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
