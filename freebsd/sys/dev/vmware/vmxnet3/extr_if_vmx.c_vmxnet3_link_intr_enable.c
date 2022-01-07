
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int vmx_event_intr_idx; } ;
typedef int if_ctx_t ;


 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_enable_intr (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_link_intr_enable(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);
 vmxnet3_enable_intr(sc, sc->vmx_event_intr_idx);
}
