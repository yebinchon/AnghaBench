
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;
typedef int device_t ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int IFDI_SUSPEND (int ) ;
 int bus_generic_suspend (int ) ;
 int device_get_softc (int ) ;

int
iflib_device_suspend(device_t dev)
{
 if_ctx_t ctx = device_get_softc(dev);

 CTX_LOCK(ctx);
 IFDI_SUSPEND(ctx);
 CTX_UNLOCK(ctx);

 return bus_generic_suspend(dev);
}
