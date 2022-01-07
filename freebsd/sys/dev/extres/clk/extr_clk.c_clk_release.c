
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_4__ {scalar_t__ enable_cnt; struct clknode* clknode; } ;


 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLKNODE_XLOCK (struct clknode*) ;
 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int KASSERT (int,char*) ;
 int M_CLOCK ;
 int clknode_disable (struct clknode*) ;
 int free (TYPE_1__*,int ) ;

int
clk_release(clk_t clk)
{
 struct clknode *clknode;

 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));
 CLK_TOPO_SLOCK();
 while (clk->enable_cnt > 0) {
  clknode_disable(clknode);
  clk->enable_cnt--;
 }
 CLKNODE_XLOCK(clknode);
 clknode->ref_cnt--;
 CLKNODE_UNLOCK(clknode);
 CLK_TOPO_UNLOCK();

 free(clk, M_CLOCK);
 return (0);
}
