
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int parent_cnt; } ;



int
clknode_get_parents_num(struct clknode *clknode)
{

 return (clknode->parent_cnt);
}
