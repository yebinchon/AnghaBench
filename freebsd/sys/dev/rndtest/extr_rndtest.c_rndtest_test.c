
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rndtest_state {int rs_discard; } ;
struct TYPE_4__ {int rst_tests; } ;
struct TYPE_3__ {int (* test ) (struct rndtest_state*) ;} ;


 int RNDTEST_NTESTS ;
 TYPE_2__ rndstats ;
 TYPE_1__* rndtest_funcs ;
 int stub1 (struct rndtest_state*) ;

__attribute__((used)) static void
rndtest_test(struct rndtest_state *rsp)
{
 int i, rv = 0;

 rndstats.rst_tests++;
 for (i = 0; i < RNDTEST_NTESTS; i++)
  rv |= (*rndtest_funcs[i].test)(rsp);
 rsp->rs_discard = (rv != 0);
}
