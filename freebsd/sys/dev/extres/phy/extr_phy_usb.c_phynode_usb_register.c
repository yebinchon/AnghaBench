
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;


 struct phynode* phynode_register (struct phynode*) ;

struct phynode
*phynode_usb_register(struct phynode *phynode)
{

 return (phynode_register(phynode));
}
