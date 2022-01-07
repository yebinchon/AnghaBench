
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bnxt_softc {int dev; } ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct bnxt_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int bnxt_vlan_only_sysctl ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

int
bnxt_create_config_sysctls_post(struct bnxt_softc *softc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(softc->dev);
 struct sysctl_oid_list *children;

 children = SYSCTL_CHILDREN(device_get_sysctl_tree(softc->dev));;

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "vlan_only",
     CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_vlan_only_sysctl, "I",
     "require vlan tag on received packets when vlan is enabled");

 return 0;
}
