
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_ctx_list {int dummy; } ;
struct vi_info {struct sysctl_ctx_list ctx; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_6__ {int sidx; int pidx; int cidx; int cntxt_id; int ba; } ;
struct sge_wrq {int tx_wrs_ss; int tx_wrs_copied; int tx_wrs_direct; TYPE_3__ eq; scalar_t__ ndesc_needed; scalar_t__ nwr_pending; int wr_list; int incomplete_wrs; int wrq_tx_task; struct adapter* adapter; } ;
struct TYPE_4__ {int spg_len; } ;
struct TYPE_5__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; struct sysctl_ctx_list ctx; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int EQ_ESIZE ;
 int OID_AUTO ;
 int STAILQ_INIT (int *) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UAUTO (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct sge_wrq*) ;
 int alloc_eq (struct adapter*,struct vi_info*,TYPE_3__*) ;
 int sysctl_uint16 ;
 int wrq_tx_drain ;

__attribute__((used)) static int
alloc_wrq(struct adapter *sc, struct vi_info *vi, struct sge_wrq *wrq,
    struct sysctl_oid *oid)
{
 int rc;
 struct sysctl_ctx_list *ctx = vi ? &vi->ctx : &sc->ctx;
 struct sysctl_oid_list *children = SYSCTL_CHILDREN(oid);

 rc = alloc_eq(sc, vi, &wrq->eq);
 if (rc)
  return (rc);

 wrq->adapter = sc;
 TASK_INIT(&wrq->wrq_tx_task, 0, wrq_tx_drain, wrq);
 TAILQ_INIT(&wrq->incomplete_wrs);
 STAILQ_INIT(&wrq->wr_list);
 wrq->nwr_pending = 0;
 wrq->ndesc_needed = 0;

 SYSCTL_ADD_UAUTO(ctx, children, OID_AUTO, "ba", CTLFLAG_RD,
     &wrq->eq.ba, "bus address of descriptor ring");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "dmalen", CTLFLAG_RD, ((void*)0),
     wrq->eq.sidx * EQ_ESIZE + sc->params.sge.spg_len,
     "desc ring size in bytes");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "cntxt_id", CTLFLAG_RD,
     &wrq->eq.cntxt_id, 0, "SGE context id of the queue");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "cidx",
     CTLTYPE_INT | CTLFLAG_RD, &wrq->eq.cidx, 0, sysctl_uint16, "I",
     "consumer index");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "pidx",
     CTLTYPE_INT | CTLFLAG_RD, &wrq->eq.pidx, 0, sysctl_uint16, "I",
     "producer index");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "sidx", CTLFLAG_RD, ((void*)0),
     wrq->eq.sidx, "status page index");
 SYSCTL_ADD_UQUAD(ctx, children, OID_AUTO, "tx_wrs_direct", CTLFLAG_RD,
     &wrq->tx_wrs_direct, "# of work requests (direct)");
 SYSCTL_ADD_UQUAD(ctx, children, OID_AUTO, "tx_wrs_copied", CTLFLAG_RD,
     &wrq->tx_wrs_copied, "# of work requests (copied)");
 SYSCTL_ADD_UQUAD(ctx, children, OID_AUTO, "tx_wrs_sspace", CTLFLAG_RD,
     &wrq->tx_wrs_ss, "# of work requests (copied from scratch space)");

 return (rc);
}
