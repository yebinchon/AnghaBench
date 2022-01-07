
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {struct regnode* parent; } ;


 int REG_TOPO_ASSERT () ;
 int regnode_resolve_parent (struct regnode*) ;

struct regnode *
regnode_get_parent(struct regnode *regnode)
{
 int rv;

 REG_TOPO_ASSERT();

 rv = regnode_resolve_parent(regnode);
 if (rv != 0)
  return (((void*)0));

 return (regnode->parent);
}
