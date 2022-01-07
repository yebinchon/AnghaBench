
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_vsi {int eth_stats; struct sysctl_oid* vsi_node; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char const*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int ixl_add_sysctls_eth_stats (struct sysctl_ctx_list*,struct sysctl_oid_list*,int *) ;

void
ixl_add_vsi_sysctls(device_t dev, struct ixl_vsi *vsi,
    struct sysctl_ctx_list *ctx, const char *sysctl_name)
{
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;
 struct sysctl_oid_list *vsi_list;

 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);
 vsi->vsi_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, sysctl_name,
       CTLFLAG_RD, ((void*)0), "VSI Number");
 vsi_list = SYSCTL_CHILDREN(vsi->vsi_node);

 ixl_add_sysctls_eth_stats(ctx, vsi_list, &vsi->eth_stats);
}
