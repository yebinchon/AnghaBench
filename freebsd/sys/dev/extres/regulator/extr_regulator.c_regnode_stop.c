
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {scalar_t__ enable_cnt; int flags; struct regnode* parent; } ;


 int EBUSY ;
 int REGNODE_STOP (struct regnode*,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REGULATOR_FLAGS_NOT_DISABLE ;
 int REG_TOPO_ASSERT () ;
 int regnode_delay (int) ;
 int regnode_resolve_parent (struct regnode*) ;

int
regnode_stop(struct regnode *regnode, int depth)
{
 int udelay;
 int rv;

 REG_TOPO_ASSERT();
 rv = 0;

 REGNODE_XLOCK(regnode);

 if ((regnode->enable_cnt != 0) && (depth == 0)) {
  REGNODE_UNLOCK(regnode);
  return (EBUSY);
 }

 if ((regnode->enable_cnt == 0) &&
     ((regnode->flags & REGULATOR_FLAGS_NOT_DISABLE) == 0)) {
  rv = REGNODE_STOP(regnode, &udelay);
  if (rv != 0) {
   REGNODE_UNLOCK(regnode);
   return (rv);
  }
  regnode_delay(udelay);
 }
 REGNODE_UNLOCK(regnode);

 rv = regnode_resolve_parent(regnode);
 if (rv != 0)
  return (rv);
 if (regnode->parent != ((void*)0) && regnode->parent->enable_cnt == 0)
  rv = regnode_stop(regnode->parent, depth + 1);
 return (rv);
}
