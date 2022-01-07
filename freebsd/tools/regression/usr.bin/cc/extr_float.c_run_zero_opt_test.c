
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fpequal (double,double) ;
 int test (char*,int) ;

void
run_zero_opt_test(double d1, double d2)
{

 test("optimizations don't break the sign of 0",
      fpequal(d1 - d2, 0.0)
      && fpequal(-d1 + 0.0, 0.0)
      && fpequal(-d1 - d2, -0.0)
      && fpequal(-(d1 - d2), -0.0)
      && fpequal(-d1 - (-d2), 0.0));
}
