
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int * parent; int * parent_name; } ;


 int ENODEV ;
 int * regnode_find_by_name (int *) ;

__attribute__((used)) static int
regnode_resolve_parent(struct regnode *regnode)
{


 if ((regnode->parent != ((void*)0)) ||
     (regnode->parent_name == ((void*)0)))
  return (0);

 regnode->parent = regnode_find_by_name(regnode->parent_name);
 if (regnode->parent == ((void*)0))
  return (ENODEV);
 return (0);
}
