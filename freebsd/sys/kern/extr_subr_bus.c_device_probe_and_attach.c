
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int GIANT_REQUIRED ;
 int device_attach (int ) ;
 int device_probe (int ) ;
 int vnet0 ;

int
device_probe_and_attach(device_t dev)
{
 int error;

 GIANT_REQUIRED;

 error = device_probe(dev);
 if (error == -1)
  return (0);
 else if (error != 0)
  return (error);

 CURVNET_SET_QUIET(vnet0);
 error = device_attach(dev);
 CURVNET_RESTORE();
 return error;
}
