
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__ dev; scalar_t__ subdev; } ;


 TYPE_1__* ds_devs ;

__attribute__((used)) static int
ds_finddev(u_int32_t dev, u_int32_t subdev)
{
 int i;

 for (i = 0; ds_devs[i].dev; i++) {
  if (ds_devs[i].dev == dev &&
      (ds_devs[i].subdev == subdev || ds_devs[i].subdev == 0))
   return i;
 }
 return -1;
}
