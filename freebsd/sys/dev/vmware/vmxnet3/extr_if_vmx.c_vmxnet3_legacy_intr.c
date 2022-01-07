
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmxnet3_softc {scalar_t__ vmx_intr_mask_mode; TYPE_1__* vmx_ds; int vmx_ctx; TYPE_2__* vmx_scctx; } ;
typedef TYPE_2__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_4__ {scalar_t__ isc_intr; } ;
struct TYPE_3__ {scalar_t__ event; } ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 scalar_t__ IFLIB_INTR_LEGACY ;
 int VMXNET3_BAR1_INTR ;
 scalar_t__ VMXNET3_IMM_ACTIVE ;
 int iflib_admin_intr_deferred (int ) ;
 int vmxnet3_intr_disable_all (int ) ;
 scalar_t__ vmxnet3_read_bar1 (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_legacy_intr(void *xsc)
{
 struct vmxnet3_softc *sc;
 if_softc_ctx_t scctx;
 if_ctx_t ctx;

 sc = xsc;
 scctx = sc->vmx_scctx;
 ctx = sc->vmx_ctx;






 if (scctx->isc_intr == IFLIB_INTR_LEGACY) {
  if (vmxnet3_read_bar1(sc, VMXNET3_BAR1_INTR) == 0)
   return (FILTER_HANDLED);
 }
 if (sc->vmx_intr_mask_mode == VMXNET3_IMM_ACTIVE)
  vmxnet3_intr_disable_all(ctx);

 if (sc->vmx_ds->event != 0)
  iflib_admin_intr_deferred(ctx);






 return (FILTER_SCHEDULE_THREAD);
}
