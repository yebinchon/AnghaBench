
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndtest_state {int dummy; } ;


 int RNDTEST_RUNS_NINTERVAL ;

__attribute__((used)) static void
rndtest_runs_record(struct rndtest_state *rsp, int len, int *intrv)
{
 if (len == 0)
  return;
 if (len > RNDTEST_RUNS_NINTERVAL)
  len = RNDTEST_RUNS_NINTERVAL;
 len -= 1;
 intrv[len]++;
}
