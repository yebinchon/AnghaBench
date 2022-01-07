
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {scalar_t__ nrxq; scalar_t__ ntxq; scalar_t__ first_rxq; scalar_t__ first_txq; scalar_t__ nofldrxq; scalar_t__ first_ofld_rxq; scalar_t__ nofldtxq; scalar_t__ first_ofld_txq; scalar_t__ nnmrxq; scalar_t__ nnmtxq; scalar_t__ first_nm_rxq; scalar_t__ first_nm_txq; int rss_size; int rss_base; int viid; int dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 scalar_t__ IS_MAIN_VI (struct vi_info*) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,scalar_t__*,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct vi_info*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int sysctl_holdoff_pktc_idx ;
 int sysctl_holdoff_pktc_idx_ofld ;
 int sysctl_holdoff_tmr_idx ;
 int sysctl_holdoff_tmr_idx_ofld ;
 int sysctl_noflowq ;
 int sysctl_qsize_rxq ;
 int sysctl_qsize_txq ;

void
vi_sysctls(struct vi_info *vi)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *oid;
 struct sysctl_oid_list *children;

 ctx = device_get_sysctl_ctx(vi->dev);




 oid = device_get_sysctl_tree(vi->dev);
 children = SYSCTL_CHILDREN(oid);

 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "viid", CTLFLAG_RD, ((void*)0),
     vi->viid, "VI identifer");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "nrxq", CTLFLAG_RD,
     &vi->nrxq, 0, "# of rx queues");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "ntxq", CTLFLAG_RD,
     &vi->ntxq, 0, "# of tx queues");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "first_rxq", CTLFLAG_RD,
     &vi->first_rxq, 0, "index of first rx queue");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "first_txq", CTLFLAG_RD,
     &vi->first_txq, 0, "index of first tx queue");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "rss_base", CTLFLAG_RD, ((void*)0),
     vi->rss_base, "start of RSS indirection table");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "rss_size", CTLFLAG_RD, ((void*)0),
     vi->rss_size, "size of RSS indirection table");

 if (IS_MAIN_VI(vi)) {
  SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rsrv_noflowq",
      CTLTYPE_INT | CTLFLAG_RW, vi, 0, sysctl_noflowq, "IU",
      "Reserve queue 0 for non-flowid packets");
 }
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "holdoff_tmr_idx",
     CTLTYPE_INT | CTLFLAG_RW, vi, 0, sysctl_holdoff_tmr_idx, "I",
     "holdoff timer index");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "holdoff_pktc_idx",
     CTLTYPE_INT | CTLFLAG_RW, vi, 0, sysctl_holdoff_pktc_idx, "I",
     "holdoff packet counter index");

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "qsize_rxq",
     CTLTYPE_INT | CTLFLAG_RW, vi, 0, sysctl_qsize_rxq, "I",
     "rx queue size");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "qsize_txq",
     CTLTYPE_INT | CTLFLAG_RW, vi, 0, sysctl_qsize_txq, "I",
     "tx queue size");
}
