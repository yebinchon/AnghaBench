
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sge_iq {int qsize; int cidx; int cntxt_id; int abs_id; int ba; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int IQ_ESIZE ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UAUTO (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int sysctl_uint16 ;

__attribute__((used)) static void
add_iq_sysctls(struct sysctl_ctx_list *ctx, struct sysctl_oid *oid,
    struct sge_iq *iq)
{
 struct sysctl_oid_list *children = SYSCTL_CHILDREN(oid);

 SYSCTL_ADD_UAUTO(ctx, children, OID_AUTO, "ba", CTLFLAG_RD, &iq->ba,
     "bus address of descriptor ring");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "dmalen", CTLFLAG_RD, ((void*)0),
     iq->qsize * IQ_ESIZE, "descriptor ring size in bytes");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "abs_id",
     CTLTYPE_INT | CTLFLAG_RD, &iq->abs_id, 0, sysctl_uint16, "I",
     "absolute id of the queue");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "cntxt_id",
     CTLTYPE_INT | CTLFLAG_RD, &iq->cntxt_id, 0, sysctl_uint16, "I",
     "SGE context id of the queue");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "cidx",
     CTLTYPE_INT | CTLFLAG_RD, &iq->cidx, 0, sysctl_uint16, "I",
     "consumer index");
}
