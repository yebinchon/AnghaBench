
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clknode {TYPE_1__* clkdom; } ;
typedef int device_t ;
struct TYPE_2__ {int dev; } ;



device_t
clknode_get_device(struct clknode *clknode)
{

 return (clknode->clkdom->dev);
}
