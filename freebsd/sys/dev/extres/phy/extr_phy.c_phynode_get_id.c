
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {intptr_t id; } ;



intptr_t phynode_get_id(struct phynode *phynode)
{

 return (phynode->id);
}
