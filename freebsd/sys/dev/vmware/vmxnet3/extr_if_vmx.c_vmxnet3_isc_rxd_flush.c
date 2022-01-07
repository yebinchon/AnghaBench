
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct vmxnet3_softc {struct vmxnet3_rxqueue* vmx_rxq; } ;
struct vmxnet3_rxring {scalar_t__ vxrxr_ndesc; } ;
struct vmxnet3_rxqueue {struct vmxnet3_rxring* vxrxq_cmd_ring; } ;
typedef scalar_t__ qidx_t ;
typedef int bus_size_t ;


 int VMXNET3_BAR0_RXH1 (size_t) ;
 int VMXNET3_BAR0_RXH2 (size_t) ;
 int vmxnet3_write_bar0 (struct vmxnet3_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
vmxnet3_isc_rxd_flush(void *vsc, uint16_t rxqid, uint8_t flid, qidx_t pidx)
{
 struct vmxnet3_softc *sc;
 struct vmxnet3_rxqueue *rxq;
 struct vmxnet3_rxring *rxr;
 bus_size_t r;

 sc = vsc;
 rxq = &sc->vmx_rxq[rxqid];
 rxr = &rxq->vxrxq_cmd_ring[flid];

 if (flid == 0)
  r = VMXNET3_BAR0_RXH1(rxqid);
 else
  r = VMXNET3_BAR0_RXH2(rxqid);






 if (++pidx == rxr->vxrxr_ndesc)
  pidx = 0;
 vmxnet3_write_bar0(sc, r, pidx);
}
