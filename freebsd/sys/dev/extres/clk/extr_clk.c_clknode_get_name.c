
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {char const* name; } ;



const char *
clknode_get_name(struct clknode *clknode)
{

 return (clknode->name);
}
