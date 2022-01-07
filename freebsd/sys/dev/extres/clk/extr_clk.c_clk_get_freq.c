
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_3__ {struct clknode* clknode; } ;


 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int KASSERT (int,char*) ;
 int clknode_get_freq (struct clknode*,int *) ;

int
clk_get_freq(clk_t clk, uint64_t *freq)
{
 int rv;
 struct clknode *clknode;

 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));

 CLK_TOPO_SLOCK();
 rv = clknode_get_freq(clknode, freq);
 CLK_TOPO_UNLOCK();
 return (rv);
}
