
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int enable_cnt; int flags; scalar_t__ parent_cnt; struct clknode* parent; } ;


 int CLKNODE_SET_GATE (struct clknode*,int ) ;
 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLKNODE_XLOCK (struct clknode*) ;
 int CLK_NODE_CANNOT_STOP ;
 int CLK_TOPO_ASSERT () ;

int
clknode_disable(struct clknode *clknode)
{
 int rv;

 CLK_TOPO_ASSERT();
 rv = 0;

 CLKNODE_XLOCK(clknode);

 if ((clknode->enable_cnt == 1) &&
     ((clknode->flags & CLK_NODE_CANNOT_STOP) == 0)) {
  rv = CLKNODE_SET_GATE(clknode, 0);
  if (rv != 0) {
   CLKNODE_UNLOCK(clknode);
   return (rv);
  }
 }
 clknode->enable_cnt--;
 CLKNODE_UNLOCK(clknode);

 if (clknode->parent_cnt > 0) {
  rv = clknode_disable(clknode->parent);
 }
 return (rv);
}
