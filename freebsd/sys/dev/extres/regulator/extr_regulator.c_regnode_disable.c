
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int always_on; } ;
struct regnode {int enable_cnt; int flags; struct regnode* parent; TYPE_1__ std_param; } ;


 int REGNODE_ENABLE (struct regnode*,int,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REGULATOR_FLAGS_NOT_DISABLE ;
 int REG_TOPO_ASSERT () ;
 int regnode_delay (int) ;
 int regnode_resolve_parent (struct regnode*) ;

int
regnode_disable(struct regnode *regnode)
{
 int udelay;
 int rv;

 REG_TOPO_ASSERT();
 rv = 0;

 REGNODE_XLOCK(regnode);

 if (regnode->enable_cnt == 1 &&
     (regnode->flags & REGULATOR_FLAGS_NOT_DISABLE) == 0 &&
     !regnode->std_param.always_on) {
  rv = REGNODE_ENABLE(regnode, 0, &udelay);
  if (rv != 0) {
   REGNODE_UNLOCK(regnode);
   return (rv);
  }
  regnode_delay(udelay);
 }
 regnode->enable_cnt--;
 REGNODE_UNLOCK(regnode);

 rv = regnode_resolve_parent(regnode);
 if (rv != 0)
  return (rv);
 if (regnode->parent != ((void*)0))
  rv = regnode_disable(regnode->parent);
 return (rv);
}
