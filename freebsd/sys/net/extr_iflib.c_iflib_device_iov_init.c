
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;
typedef int if_ctx_t ;
typedef int device_t ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int IFDI_IOV_INIT (int ,int ,int const*) ;
 int device_get_softc (int ) ;

int
iflib_device_iov_init(device_t dev, uint16_t num_vfs, const nvlist_t *params)
{
 int error;
 if_ctx_t ctx = device_get_softc(dev);

 CTX_LOCK(ctx);
 error = IFDI_IOV_INIT(ctx, num_vfs, params);
 CTX_UNLOCK(ctx);

 return (error);
}
