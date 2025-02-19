
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_6__ {int num_tx_rings; TYPE_1__* xmt; } ;
struct TYPE_7__ {TYPE_2__ hw; int pci_dev; } ;
typedef TYPE_3__ qla_host_t ;
typedef int name_str ;
struct TYPE_5__ {int num_buffers; int switch_pkts; int pkts_dropped; int errors; int total_pkts; int total_bytes; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bzero (char*,int) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
qlnx_add_hw_xmt_stats_sysctls(qla_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
        struct sysctl_oid_list *node_children;
        struct sysctl_oid *ctx_oid;
        int i;
        uint8_t name_str[16];

        ctx = device_get_sysctl_ctx(ha->pci_dev);
        children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

        ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats_hw_xmt",
                        CTLFLAG_RD, ((void*)0), "stats_hw_xmt");
        children = SYSCTL_CHILDREN(ctx_oid);

        for (i = 0; i < ha->hw.num_tx_rings; i++) {

                bzero(name_str, (sizeof(uint8_t) * sizeof(name_str)));
                snprintf(name_str, sizeof(name_str), "%d", i);

                ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, name_str,
                        CTLFLAG_RD, ((void*)0), name_str);
                node_children = SYSCTL_CHILDREN(ctx_oid);



                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "total_bytes",
                        CTLFLAG_RD, &ha->hw.xmt[i].total_bytes,
                        "total_bytes");

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "total_pkts",
                        CTLFLAG_RD, &ha->hw.xmt[i].total_pkts,
                        "total_pkts");

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "errors",
                        CTLFLAG_RD, &ha->hw.xmt[i].errors,
                        "errors");

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "pkts_dropped",
                        CTLFLAG_RD, &ha->hw.xmt[i].pkts_dropped,
                        "pkts_dropped");

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "switch_pkts",
                        CTLFLAG_RD, &ha->hw.xmt[i].switch_pkts,
                        "switch_pkts");

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "num_buffers",
                        CTLFLAG_RD, &ha->hw.xmt[i].num_buffers,
                        "num_buffers");
 }

 return;
}
