
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_dev; TYPE_1__* vmx_scctx; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_nrxqsets; } ;


 int VMXNET3_BAR0_RXH1 (int) ;
 int VMXNET3_BAR0_RXH2 (int) ;
 int VMXNET3_CMD_ENABLE ;
 int device_printf (int ,char*) ;
 scalar_t__ vmxnet3_read_cmd (struct vmxnet3_softc*,int ) ;
 int vmxnet3_write_bar0 (struct vmxnet3_softc*,int ,int ) ;

__attribute__((used)) static int
vmxnet3_enable_device(struct vmxnet3_softc *sc)
{
 if_softc_ctx_t scctx;
 int q;

 scctx = sc->vmx_scctx;

 if (vmxnet3_read_cmd(sc, VMXNET3_CMD_ENABLE) != 0) {
  device_printf(sc->vmx_dev, "device enable command failed!\n");
  return (1);
 }


 for (q = 0; q < scctx->isc_nrxqsets; q++) {
  vmxnet3_write_bar0(sc, VMXNET3_BAR0_RXH1(q), 0);
  vmxnet3_write_bar0(sc, VMXNET3_BAR0_RXH2(q), 0);
 }

 return (0);
}
