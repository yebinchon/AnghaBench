
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_vsi {int ctx; } ;
struct i40e_hw_port_stats {int dummy; } ;
struct ixl_pf {int admin_irq; struct i40e_hw_port_stats stats; struct ixl_vsi vsi; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int iflib_get_dev (int ) ;
 int ixl_add_queues_sysctls (int ,struct ixl_vsi*) ;
 int ixl_add_sysctls_mac_stats (struct sysctl_ctx_list*,struct sysctl_oid_list*,struct i40e_hw_port_stats*) ;
 int ixl_add_vsi_sysctls (int ,struct ixl_vsi*,struct sysctl_ctx_list*,char*) ;

void
ixl_add_hw_stats(struct ixl_pf *pf)
{
 struct ixl_vsi *vsi = &pf->vsi;
 device_t dev = iflib_get_dev(vsi->ctx);
 struct i40e_hw_port_stats *pf_stats = &pf->stats;

 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 struct sysctl_oid_list *child = SYSCTL_CHILDREN(tree);


 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "admin_irq",
   CTLFLAG_RD, &pf->admin_irq,
   "Admin Queue IRQs received");

 ixl_add_vsi_sysctls(dev, vsi, ctx, "pf");

 ixl_add_queues_sysctls(dev, vsi);

 ixl_add_sysctls_mac_stats(ctx, child, pf_stats);
}
