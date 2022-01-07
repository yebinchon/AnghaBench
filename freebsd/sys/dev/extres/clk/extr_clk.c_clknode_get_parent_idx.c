
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int parent_idx; } ;



int
clknode_get_parent_idx(struct clknode *clknode)
{

 return (clknode->parent_idx);
}
