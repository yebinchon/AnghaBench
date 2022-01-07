
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* if_shared_ctx_t ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ isc_magic; } ;


 TYPE_1__* DEVICE_REGISTER (int ) ;
 int ENOTSUP ;
 scalar_t__ IFLIB_MAGIC ;
 int iflib_device_register (int ,int *,TYPE_1__*,int *) ;
 int pci_enable_busmaster (int ) ;

int
iflib_device_attach(device_t dev)
{
 if_ctx_t ctx;
 if_shared_ctx_t sctx;

 if ((sctx = DEVICE_REGISTER(dev)) == ((void*)0) || sctx->isc_magic != IFLIB_MAGIC)
  return (ENOTSUP);

 pci_enable_busmaster(dev);

 return (iflib_device_register(dev, ((void*)0), sctx, &ctx));
}
