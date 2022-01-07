
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int pdev; } ;
typedef int device_t ;



device_t
regnode_get_device(struct regnode *regnode)
{

 return (regnode->pdev);
}
