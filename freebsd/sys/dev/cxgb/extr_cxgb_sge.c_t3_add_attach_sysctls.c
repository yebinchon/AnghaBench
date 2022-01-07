
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int cclk; } ;
struct TYPE_6__ {TYPE_1__ vpd; int rev; } ;
struct TYPE_7__ {TYPE_2__ params; int tunq_coalesce; int port_types; int fw_version; int dev; } ;
typedef TYPE_3__ adapter_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int cxgb_debug ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int txq_fills ;

void
t3_add_attach_sysctls(adapter_t *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;

 ctx = device_get_sysctl_ctx(sc->dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));


 SYSCTL_ADD_STRING(ctx, children, OID_AUTO,
     "firmware_version",
     CTLFLAG_RD, sc->fw_version,
     0, "firmware version");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "hw_revision",
     CTLFLAG_RD, &sc->params.rev,
     0, "chip model");
 SYSCTL_ADD_STRING(ctx, children, OID_AUTO,
     "port_types",
     CTLFLAG_RD, sc->port_types,
     0, "type of ports");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO,
     "enable_debug",
     CTLFLAG_RW, &cxgb_debug,
     0, "enable verbose debugging output");
 SYSCTL_ADD_UQUAD(ctx, children, OID_AUTO, "tunq_coalesce",
     CTLFLAG_RD, &sc->tunq_coalesce,
     "#tunneled packets freed");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO,
     "txq_overrun",
     CTLFLAG_RD, &txq_fills,
     0, "#times txq overrun");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "core_clock",
     CTLFLAG_RD, &sc->params.vpd.cclk,
     0, "core clock frequency (in KHz)");
}
