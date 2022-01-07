
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {TYPE_1__* vmx_ds; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {int ictrl; } ;


 int VMXNET3_ICTRL_DISABLE_ALL ;
 int VMXNET3_MAX_INTRS ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_disable_intr (struct vmxnet3_softc*,int) ;

__attribute__((used)) static void
vmxnet3_intr_disable_all(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;
 int i;

 sc = iflib_get_softc(ctx);





 if (sc->vmx_ds != ((void*)0))
  sc->vmx_ds->ictrl |= VMXNET3_ICTRL_DISABLE_ALL;
 for (i = 0; i < VMXNET3_MAX_INTRS; i++)
  vmxnet3_disable_intr(sc, i);
}
