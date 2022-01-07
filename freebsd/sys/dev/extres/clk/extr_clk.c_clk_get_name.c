
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_3__ {struct clknode* clknode; } ;


 int KASSERT (int,char*) ;
 char* clknode_get_name (struct clknode*) ;

const char *
clk_get_name(clk_t clk)
{
 const char *name;
 struct clknode *clknode;

 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));
 name = clknode_get_name(clknode);
 return (name);
}
