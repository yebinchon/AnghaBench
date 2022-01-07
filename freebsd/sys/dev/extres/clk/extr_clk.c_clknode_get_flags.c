
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int flags; } ;



int
clknode_get_flags(struct clknode *clknode)
{

 return (clknode->flags);
}
