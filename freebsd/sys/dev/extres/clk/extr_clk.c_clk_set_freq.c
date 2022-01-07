
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_3__ {int enable_cnt; struct clknode* clknode; } ;


 int CLK_SET_USER_MASK ;
 int CLK_TOPO_UNLOCK () ;
 int CLK_TOPO_XLOCK () ;
 int KASSERT (int,char*) ;
 int clknode_set_freq (struct clknode*,int ,int,int ) ;

int
clk_set_freq(clk_t clk, uint64_t freq, int flags)
{
 int rv;
 struct clknode *clknode;

 flags &= CLK_SET_USER_MASK;
 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));

 CLK_TOPO_XLOCK();
 rv = clknode_set_freq(clknode, freq, flags, clk->enable_cnt);
 CLK_TOPO_UNLOCK();
 return (rv);
}
