
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {scalar_t__ vmx_link_active; } ;
typedef int if_ctx_t ;


 int VMXNET3_CMD_DISABLE ;
 int VMXNET3_CMD_RESET ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_write_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_stop(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);

 sc->vmx_link_active = 0;
 vmxnet3_write_cmd(sc, VMXNET3_CMD_DISABLE);
 vmxnet3_write_cmd(sc, VMXNET3_CMD_RESET);
}
