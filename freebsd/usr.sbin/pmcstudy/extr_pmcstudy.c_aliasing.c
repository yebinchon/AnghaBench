
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
aliasing(struct counters *cpu, int pos)
{

 int ret;
 struct counters *ld;
 struct counters *unhalt;
 double un, lds, con, res;

 con = 5.0;
 unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
 ld = find_counter(cpu, "LD_BLOCKS_PARTIAL.ADDRESS_ALIAS");
 if (pos != -1) {
  lds = ld->vals[pos] * 1.0;
  un = unhalt->vals[pos] * 1.0;
 } else {
  lds = ld->sum * 1.0;
  un = unhalt->sum * 1.0;
 }
 res = (lds * con)/un;
 ret = printf("%1.3f", res);
 return(ret);
}
