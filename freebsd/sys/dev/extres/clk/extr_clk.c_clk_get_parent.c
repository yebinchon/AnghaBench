
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_5__ {int dev; struct clknode* clknode; } ;


 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int ENODEV ;
 int KASSERT (int,char*) ;
 TYPE_1__* clk_create (struct clknode*,int ) ;
 struct clknode* clknode_get_parent (struct clknode*) ;

int
clk_get_parent(clk_t clk, clk_t *parent)
{
 struct clknode *clknode;
 struct clknode *parentnode;

 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));

 CLK_TOPO_SLOCK();
 parentnode = clknode_get_parent(clknode);
 if (parentnode == ((void*)0)) {
  CLK_TOPO_UNLOCK();
  return (ENODEV);
 }
 *parent = clk_create(parentnode, clk->dev);
 CLK_TOPO_UNLOCK();
 return (0);
}
