
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*,int) ;
 int nf10bmac_detach (int ) ;
 int nf10bmac_detach_resources (int ) ;

int
nf10bmac_detach_dev(device_t dev)
{
 int error;

 error = nf10bmac_detach(dev);
 if (error) {

  device_printf(dev, "nf10bmac_detach() failed: %d\n", error);
  return (error);
 }

 nf10bmac_detach_resources(dev);

 return (0);
}
