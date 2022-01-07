
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int pdev; } ;
typedef int device_t ;



device_t
phynode_get_device(struct phynode *phynode)
{

 return (phynode->pdev);
}
