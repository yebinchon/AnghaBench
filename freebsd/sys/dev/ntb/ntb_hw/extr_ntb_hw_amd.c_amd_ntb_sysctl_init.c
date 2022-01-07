
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct amd_ntb_softc {int device; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct amd_ntb_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int amd_ntb_hw_info_handler ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
amd_ntb_sysctl_init(struct amd_ntb_softc *ntb)
{
 struct sysctl_oid_list *globals;
 struct sysctl_ctx_list *ctx;

 ctx = device_get_sysctl_ctx(ntb->device);
 globals = SYSCTL_CHILDREN(device_get_sysctl_tree(ntb->device));

 SYSCTL_ADD_PROC(ctx, globals, OID_AUTO, "info",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, ntb, 0,
     amd_ntb_hw_info_handler, "A", "AMD NTB HW Information");
}
