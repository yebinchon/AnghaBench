
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdom {int dummy; } ;


 int CLK_TOPO_XLOCK () ;

void
clkdom_xlock(struct clkdom *clkdom)
{

 CLK_TOPO_XLOCK();
}
