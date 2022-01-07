
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int if_ctx_t ;
typedef int device_t ;


 int IFC_INIT_DONE ;
 int IFDI_DETACH (int ) ;
 int device_get_softc (int ) ;
 int iflib_get_flags (int ) ;

int
iflib_pseudo_detach(device_t dev)
{
 if_ctx_t ctx;
 uint32_t ifc_flags;

 ctx = device_get_softc(dev);
 ifc_flags = iflib_get_flags(ctx);
 if ((ifc_flags & IFC_INIT_DONE) == 0)
  return (0);
 return (IFDI_DETACH(ctx));
}
