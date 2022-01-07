
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_br {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int desc ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_OPAQUE ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char const*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct vmbus_br*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int snprintf (char*,int,char*,char const*) ;
 int vmbus_br_sysctl_state ;
 int vmbus_br_sysctl_state_bin ;

void
vmbus_br_sysctl_create(struct sysctl_ctx_list *ctx, struct sysctl_oid *br_tree,
    struct vmbus_br *br, const char *name)
{
 struct sysctl_oid *tree;
 char desc[64];

 tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(br_tree), OID_AUTO,
     name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
 if (tree == ((void*)0))
  return;

 snprintf(desc, sizeof(desc), "%s state", name);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "state",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE,
     br, 0, vmbus_br_sysctl_state, "A", desc);

 snprintf(desc, sizeof(desc), "%s binary state", name);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "state_bin",
     CTLTYPE_OPAQUE | CTLFLAG_RD | CTLFLAG_MPSAFE,
     br, 0, vmbus_br_sysctl_state_bin, "IU", desc);
}
