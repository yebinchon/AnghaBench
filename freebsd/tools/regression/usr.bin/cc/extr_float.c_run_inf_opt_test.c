
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAN ;
 scalar_t__ fpequal (double,int ) ;
 int test (char*,int) ;

void
run_inf_opt_test(double d)
{

 test("optimizations don't break infinities",
      fpequal(d / d, NAN) && fpequal(0.0 * d, NAN));
}
