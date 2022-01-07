
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;
typedef int device_t ;


 int device_get_softc (int ) ;
 int iflib_device_deregister (int ) ;

int
iflib_device_detach(device_t dev)
{
 if_ctx_t ctx = device_get_softc(dev);

 return (iflib_device_deregister(ctx));
}
