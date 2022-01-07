
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {scalar_t__ enable_cnt; int flags; scalar_t__ parent_cnt; struct clknode* parent; } ;


 int CLKNODE_SET_GATE (struct clknode*,int ) ;
 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLKNODE_XLOCK (struct clknode*) ;
 int CLK_NODE_CANNOT_STOP ;
 int CLK_TOPO_ASSERT () ;
 int EBUSY ;

int
clknode_stop(struct clknode *clknode, int depth)
{
 int rv;

 CLK_TOPO_ASSERT();
 rv = 0;

 CLKNODE_XLOCK(clknode);

 if ((clknode->enable_cnt != 0) && (depth == 0)) {
  CLKNODE_UNLOCK(clknode);
  return (EBUSY);
 }

 if ((clknode->enable_cnt == 0) &&
     ((clknode->flags & CLK_NODE_CANNOT_STOP) == 0)) {
  rv = CLKNODE_SET_GATE(clknode, 0);
  if (rv != 0) {
   CLKNODE_UNLOCK(clknode);
   return (rv);
  }
 }
 CLKNODE_UNLOCK(clknode);

 if (clknode->parent_cnt > 0)
  rv = clknode_stop(clknode->parent, depth + 1);
 return (rv);
}
