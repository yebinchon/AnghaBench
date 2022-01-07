
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_media; int vmx_flags; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_3__ {int isc_nrxqsets; } ;


 int IFM_AUTO ;
 int IFM_ETHER ;
 int VMXNET3_FLAG_RSS ;
 int iflib_get_dev (int ) ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int ifmedia_add (int ,int,int ,int *) ;
 int ifmedia_set (int ,int) ;
 int vmxnet3_alloc_data (struct vmxnet3_softc*) ;
 int vmxnet3_set_interrupt_idx (struct vmxnet3_softc*) ;
 int vmxnet3_setup_sysctl (struct vmxnet3_softc*) ;

__attribute__((used)) static int
vmxnet3_attach_post(if_ctx_t ctx)
{
 device_t dev;
 if_softc_ctx_t scctx;
 struct vmxnet3_softc *sc;
 int error;

 dev = iflib_get_dev(ctx);
 scctx = iflib_get_softc_ctx(ctx);
 sc = iflib_get_softc(ctx);

 if (scctx->isc_nrxqsets > 1)
  sc->vmx_flags |= VMXNET3_FLAG_RSS;

 error = vmxnet3_alloc_data(sc);
 if (error)
  goto fail;

 vmxnet3_set_interrupt_idx(sc);
 vmxnet3_setup_sysctl(sc);

 ifmedia_add(sc->vmx_media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(sc->vmx_media, IFM_ETHER | IFM_AUTO);

fail:
 return (error);
}
