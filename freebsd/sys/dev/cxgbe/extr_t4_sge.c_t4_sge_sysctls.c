
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sge_params {int pack_boundary; int spg_len; int pad_boundary; int fl_pktshift; } ;
struct TYPE_2__ {struct sge_params sge; } ;
struct adapter {int sge; TYPE_1__ params; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 int cong_drop ;
 int sysctl_bufsizes ;

void
t4_sge_sysctls(struct adapter *sc, struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *children)
{
 struct sge_params *sp = &sc->params.sge;

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "buffer_sizes",
     CTLTYPE_STRING | CTLFLAG_RD, &sc->sge, 0, sysctl_bufsizes, "A",
     "freelist buffer sizes");

 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "fl_pktshift", CTLFLAG_RD,
     ((void*)0), sp->fl_pktshift, "payload DMA offset in rx buffer (bytes)");

 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "fl_pad", CTLFLAG_RD,
     ((void*)0), sp->pad_boundary, "payload pad boundary (bytes)");

 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "spg_len", CTLFLAG_RD,
     ((void*)0), sp->spg_len, "status page size (bytes)");

 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "cong_drop", CTLFLAG_RD,
     ((void*)0), cong_drop, "congestion drop setting");

 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "fl_pack", CTLFLAG_RD,
     ((void*)0), sp->pack_boundary, "payload pack boundary (bytes)");
}
