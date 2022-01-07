
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {struct clknode* parent; } ;



struct clknode *
clknode_get_parent(struct clknode *clknode)
{

 return (clknode->parent);
}
