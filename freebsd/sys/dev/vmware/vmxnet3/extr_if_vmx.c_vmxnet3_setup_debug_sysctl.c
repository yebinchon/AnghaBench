
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vxcr_gen; int vxcr_ndesc; int vxcr_next; } ;
struct TYPE_6__ {int vxtxr_gen; int vxtxr_ndesc; int vxtxr_next; } ;
struct vmxnet3_txqueue {TYPE_2__ vxtxq_comp_ring; TYPE_1__ vxtxq_cmd_ring; int vxtxq_sysctl; } ;
struct vmxnet3_softc {struct vmxnet3_rxqueue* vmx_rxq; struct vmxnet3_txqueue* vmx_txq; TYPE_5__* vmx_scctx; } ;
struct TYPE_9__ {int vxcr_gen; int vxcr_ndesc; } ;
struct vmxnet3_rxqueue {TYPE_4__ vxrxq_comp_ring; TYPE_3__* vxrxq_cmd_ring; int vxrxq_sysctl; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef TYPE_5__* if_softc_ctx_t ;
struct TYPE_10__ {int isc_ntxqsets; int isc_nrxqsets; } ;
struct TYPE_8__ {int vxrxr_gen; int vxrxr_ndesc; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;

__attribute__((used)) static void
vmxnet3_setup_debug_sysctl(struct vmxnet3_softc *sc,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
 if_softc_ctx_t scctx;
 struct sysctl_oid *node;
 struct sysctl_oid_list *list;
 int i;

 scctx = sc->vmx_scctx;

 for (i = 0; i < scctx->isc_ntxqsets; i++) {
  struct vmxnet3_txqueue *txq = &sc->vmx_txq[i];

  node = SYSCTL_ADD_NODE(ctx, txq->vxtxq_sysctl, OID_AUTO,
      "debug", CTLFLAG_RD, ((void*)0), "");
  list = SYSCTL_CHILDREN(node);

  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "cmd_next", CTLFLAG_RD,
      &txq->vxtxq_cmd_ring.vxtxr_next, 0, "");
  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "cmd_ndesc", CTLFLAG_RD,
      &txq->vxtxq_cmd_ring.vxtxr_ndesc, 0, "");
  SYSCTL_ADD_INT(ctx, list, OID_AUTO, "cmd_gen", CTLFLAG_RD,
      &txq->vxtxq_cmd_ring.vxtxr_gen, 0, "");
  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "comp_next", CTLFLAG_RD,
      &txq->vxtxq_comp_ring.vxcr_next, 0, "");
  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "comp_ndesc", CTLFLAG_RD,
      &txq->vxtxq_comp_ring.vxcr_ndesc, 0,"");
  SYSCTL_ADD_INT(ctx, list, OID_AUTO, "comp_gen", CTLFLAG_RD,
      &txq->vxtxq_comp_ring.vxcr_gen, 0, "");
 }

 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  struct vmxnet3_rxqueue *rxq = &sc->vmx_rxq[i];

  node = SYSCTL_ADD_NODE(ctx, rxq->vxrxq_sysctl, OID_AUTO,
      "debug", CTLFLAG_RD, ((void*)0), "");
  list = SYSCTL_CHILDREN(node);

  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "cmd0_ndesc", CTLFLAG_RD,
      &rxq->vxrxq_cmd_ring[0].vxrxr_ndesc, 0, "");
  SYSCTL_ADD_INT(ctx, list, OID_AUTO, "cmd0_gen", CTLFLAG_RD,
      &rxq->vxrxq_cmd_ring[0].vxrxr_gen, 0, "");
  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "cmd1_ndesc", CTLFLAG_RD,
      &rxq->vxrxq_cmd_ring[1].vxrxr_ndesc, 0, "");
  SYSCTL_ADD_INT(ctx, list, OID_AUTO, "cmd1_gen", CTLFLAG_RD,
      &rxq->vxrxq_cmd_ring[1].vxrxr_gen, 0, "");
  SYSCTL_ADD_UINT(ctx, list, OID_AUTO, "comp_ndesc", CTLFLAG_RD,
      &rxq->vxrxq_comp_ring.vxcr_ndesc, 0,"");
  SYSCTL_ADD_INT(ctx, list, OID_AUTO, "comp_gen", CTLFLAG_RD,
      &rxq->vxrxq_comp_ring.vxcr_gen, 0, "");
 }
}
