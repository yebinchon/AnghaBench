
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int flags; } ;
struct clkdom {int clknode_list; } ;


 int CLKNODE_INIT (struct clknode*,int ) ;
 int CLK_NODE_REGISTERED ;
 int TAILQ_INSERT_TAIL (int *,struct clknode*,int ) ;
 int clkdom_link ;
 int clknode_get_device (struct clknode*) ;
 int printf (char*,int) ;

struct clknode *
clknode_register(struct clkdom * clkdom, struct clknode *clknode)
{
 int rv;


 if (clknode->flags & CLK_NODE_REGISTERED)
  return(clknode);

 rv = CLKNODE_INIT(clknode, clknode_get_device(clknode));
 if (rv != 0) {
  printf(" CLKNODE_INIT failed: %d\n", rv);
  return (((void*)0));
 }

 TAILQ_INSERT_TAIL(&clkdom->clknode_list, clknode, clkdom_link);
 clknode->flags |= CLK_NODE_REGISTERED;
 return (clknode);
}
