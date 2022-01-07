
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {scalar_t__ enable_cnt; struct regnode* parent; } ;


 int REGNODE_ENABLE (struct regnode*,int,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_ASSERT () ;
 int regnode_delay (int) ;
 int regnode_resolve_parent (struct regnode*) ;

int
regnode_enable(struct regnode *regnode)
{
 int udelay;
 int rv;

 REG_TOPO_ASSERT();


 rv = regnode_resolve_parent(regnode);
 if (rv != 0)
  return (rv);
 if (regnode->parent != ((void*)0)) {
  rv = regnode_enable(regnode->parent);
  if (rv != 0)
   return (rv);
 }


 REGNODE_XLOCK(regnode);
 if (regnode->enable_cnt == 0) {
  rv = REGNODE_ENABLE(regnode, 1, &udelay);
  if (rv != 0) {
   REGNODE_UNLOCK(regnode);
   return (rv);
  }
  regnode_delay(udelay);
 }
 regnode->enable_cnt++;
 REGNODE_UNLOCK(regnode);
 return (0);
}
