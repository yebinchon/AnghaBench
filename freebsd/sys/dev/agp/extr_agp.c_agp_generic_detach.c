
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int agp_free_cdev (int ) ;
 int agp_free_res (int ) ;

int
agp_generic_detach(device_t dev)
{

 agp_free_cdev(dev);
 agp_free_res(dev);
 return 0;
}
