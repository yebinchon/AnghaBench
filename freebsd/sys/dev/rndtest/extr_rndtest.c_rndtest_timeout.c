
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndtest_state {int rs_collect; } ;



__attribute__((used)) static void
rndtest_timeout(void *xrsp)
{
 struct rndtest_state *rsp = xrsp;

 rsp->rs_collect = 1;
}
