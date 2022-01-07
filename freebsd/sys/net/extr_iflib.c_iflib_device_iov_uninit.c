
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;
typedef int device_t ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int IFDI_IOV_UNINIT (int ) ;
 int device_get_softc (int ) ;

void
iflib_device_iov_uninit(device_t dev)
{
 if_ctx_t ctx = device_get_softc(dev);

 CTX_LOCK(ctx);
 IFDI_IOV_UNINIT(ctx);
 CTX_UNLOCK(ctx);
}
