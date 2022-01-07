
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {struct regnode* parent; } ;


 int ENOENT ;
 int REGNODE_GET_VOLTAGE (struct regnode*,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_ASSERT () ;
 int regnode_resolve_parent (struct regnode*) ;

int
regnode_get_voltage(struct regnode *regnode, int *uvolt)
{
 int rv;

 REG_TOPO_ASSERT();

 REGNODE_XLOCK(regnode);
 rv = REGNODE_GET_VOLTAGE(regnode, uvolt);
 REGNODE_UNLOCK(regnode);


 if (rv == ENOENT) {
  rv = regnode_resolve_parent(regnode);
  if (rv != 0)
   return (rv);
  if (regnode->parent != ((void*)0))
   rv = regnode_get_voltage(regnode->parent, uvolt);

 }
 return (rv);
}
