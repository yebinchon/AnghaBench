
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int sp_interrupts; int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
qlnx_add_sp_stats_sysctls(qlnx_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
 struct sysctl_oid *ctx_oid;

        ctx = device_get_sysctl_ctx(ha->pci_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

 ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "spstat",
   CTLFLAG_RD, ((void*)0), "spstat");
        children = SYSCTL_CHILDREN(ctx_oid);

 SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "sp_interrupts",
                CTLFLAG_RD, &ha->sp_interrupts,
                "No. of slowpath interrupts");

 return;
}
