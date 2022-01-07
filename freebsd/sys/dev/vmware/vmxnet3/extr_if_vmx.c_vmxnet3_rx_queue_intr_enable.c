
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct vmxnet3_softc {TYPE_1__* vmx_rxq; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {int vxrxq_intr_idx; } ;


 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_enable_intr (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_rx_queue_intr_enable(if_ctx_t ctx, uint16_t qid)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);
 vmxnet3_enable_intr(sc, sc->vmx_rxq[qid].vxrxq_intr_idx);
 return (0);
}
