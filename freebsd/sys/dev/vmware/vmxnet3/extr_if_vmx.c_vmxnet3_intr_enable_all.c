
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmxnet3_softc {TYPE_1__* vmx_ds; TYPE_2__* vmx_scctx; } ;
typedef TYPE_2__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_4__ {int isc_vectors; } ;
struct TYPE_3__ {int ictrl; } ;


 int VMXNET3_ICTRL_DISABLE_ALL ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_enable_intr (struct vmxnet3_softc*,int) ;

__attribute__((used)) static void
vmxnet3_intr_enable_all(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;
 if_softc_ctx_t scctx;
 int i;

 sc = iflib_get_softc(ctx);
 scctx = sc->vmx_scctx;
 sc->vmx_ds->ictrl &= ~VMXNET3_ICTRL_DISABLE_ALL;
 for (i = 0; i < scctx->isc_vectors; i++)
  vmxnet3_enable_intr(sc, i);
}
