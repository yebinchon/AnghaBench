
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_dev; TYPE_1__* vmx_scctx; struct vmxnet3_rxqueue* vmx_rxq; } ;
struct vmxnet3_rxring {int vxrxr_ndesc; } ;
struct vmxnet3_comp_ring {int vxcr_ndesc; } ;
struct vmxnet3_rxqueue {int vxrxq_id; struct vmxnet3_rxring* vxrxq_cmd_ring; struct vmxnet3_softc* vxrxq_sc; int vxrxq_name; struct vmxnet3_comp_ring vxrxq_comp_ring; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int * isc_nrxd; } ;


 char* device_get_nameunit (int ) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static void
vmxnet3_init_rxq(struct vmxnet3_softc *sc, int q, int nrxqs)
{
 struct vmxnet3_rxqueue *rxq;
 struct vmxnet3_comp_ring *rxc;
 struct vmxnet3_rxring *rxr;
 if_softc_ctx_t scctx;
 int i;

 rxq = &sc->vmx_rxq[q];
 rxc = &rxq->vxrxq_comp_ring;
 scctx = sc->vmx_scctx;

 snprintf(rxq->vxrxq_name, sizeof(rxq->vxrxq_name), "%s-rx%d",
     device_get_nameunit(sc->vmx_dev), q);

 rxq->vxrxq_sc = sc;
 rxq->vxrxq_id = q;





 rxc->vxcr_ndesc = scctx->isc_nrxd[0];
 for (i = 0; i < nrxqs - 1; i++) {
  rxr = &rxq->vxrxq_cmd_ring[i];
  rxr->vxrxr_ndesc = scctx->isc_nrxd[i + 1];
 }
}
