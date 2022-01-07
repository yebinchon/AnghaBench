
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
fpassists(struct counters *cpu, int pos)
{

 int ret;
 struct counters *fp;
 struct counters *inst;
 double un, fpd, res;

 inst = find_counter(cpu, "INST_RETIRED.ANY_P");
 fp = find_counter(cpu, "FP_ASSIST.ANY");
 if (pos != -1) {
  fpd = fp->vals[pos] * 1.0;
  un = inst->vals[pos] * 1.0;
 } else {
  fpd = fp->sum * 1.0;
  un = inst->sum * 1.0;
 }
 res = fpd/un;
 ret = printf("%1.3f", res);
 return(ret);
}
