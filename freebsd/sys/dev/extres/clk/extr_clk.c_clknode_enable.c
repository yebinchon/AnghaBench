
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {scalar_t__ parent_cnt; scalar_t__ enable_cnt; struct clknode* parent; } ;


 int CLKNODE_SET_GATE (struct clknode*,int) ;
 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLKNODE_XLOCK (struct clknode*) ;
 int CLK_TOPO_ASSERT () ;

int
clknode_enable(struct clknode *clknode)
{
 int rv;

 CLK_TOPO_ASSERT();


 if (clknode->parent_cnt > 0) {
  rv = clknode_enable(clknode->parent);
  if (rv != 0) {
   return (rv);
  }
 }


 CLKNODE_XLOCK(clknode);
 if (clknode->enable_cnt == 0) {
  rv = CLKNODE_SET_GATE(clknode, 1);
  if (rv != 0) {
   CLKNODE_UNLOCK(clknode);
   return (rv);
  }
 }
 clknode->enable_cnt++;
 CLKNODE_UNLOCK(clknode);
 return (0);
}
