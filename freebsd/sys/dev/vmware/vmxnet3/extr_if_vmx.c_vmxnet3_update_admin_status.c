
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {TYPE_1__* vmx_ds; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {scalar_t__ event; } ;


 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_evintr (struct vmxnet3_softc*) ;
 int vmxnet3_refresh_host_stats (struct vmxnet3_softc*) ;

__attribute__((used)) static void
vmxnet3_update_admin_status(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);
 if (sc->vmx_ds->event != 0)
  vmxnet3_evintr(sc);

 vmxnet3_refresh_host_stats(sc);
}
