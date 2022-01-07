
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int atse_detach (int ) ;
 int atse_detach_resources (int ) ;
 int device_printf (int ,char*,int) ;

int
atse_detach_dev(device_t dev)
{
 int error;

 error = atse_detach(dev);
 if (error) {

  device_printf(dev, "atse_detach() failed: %d\n", error);
  return (error);
 }

 atse_detach_resources(dev);

 return (0);
}
