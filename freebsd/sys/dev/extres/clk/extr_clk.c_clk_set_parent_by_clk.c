
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_4__ {struct clknode* clknode; } ;


 int CLK_TOPO_UNLOCK () ;
 int CLK_TOPO_XLOCK () ;
 int KASSERT (int,char*) ;
 int clknode_set_parent_by_name (struct clknode*,int ) ;

int
clk_set_parent_by_clk(clk_t clk, clk_t parent)
{
 int rv;
 struct clknode *clknode;
 struct clknode *parentnode;

 clknode = clk->clknode;
 parentnode = parent->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));
 KASSERT(parentnode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));
 CLK_TOPO_XLOCK();
 rv = clknode_set_parent_by_name(clknode, parentnode->name);
 CLK_TOPO_UNLOCK();
 return (rv);
}
