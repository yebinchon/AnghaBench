
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bnxt_softc {int ctx; int dev; } ;
struct TYPE_2__ {int if_xname; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct bnxt_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int ,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int bnxt_rss_key_sysctl ;
 int bnxt_rss_type_sysctl ;
 int bnxt_rx_stall_sysctl ;
 int bnxt_set_coal_rx_frames ;
 int bnxt_set_coal_rx_frames_irq ;
 int bnxt_set_coal_rx_usecs ;
 int bnxt_set_coal_rx_usecs_irq ;
 int bnxt_set_coal_tx_frames ;
 int bnxt_set_coal_tx_frames_irq ;
 int bnxt_set_coal_tx_usecs ;
 int bnxt_set_coal_tx_usecs_irq ;
 int bnxt_vlan_strip_sysctl ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 TYPE_1__* iflib_get_ifp (int ) ;

int
bnxt_create_config_sysctls_pre(struct bnxt_softc *softc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(softc->dev);
 struct sysctl_oid_list *children;

 children = SYSCTL_CHILDREN(device_get_sysctl_tree(softc->dev));;

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rss_key",
     CTLTYPE_STRING|CTLFLAG_RWTUN, softc, 0, bnxt_rss_key_sysctl, "A",
     "RSS key");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rss_type",
     CTLTYPE_STRING|CTLFLAG_RWTUN, softc, 0, bnxt_rss_type_sysctl, "A",
     "RSS type bits");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_stall",
     CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_rx_stall_sysctl, "I",
     "buffer rx packets in hardware until the host posts new buffers");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "vlan_strip",
     CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_vlan_strip_sysctl, "I",
     "strip VLAN tag in the RX path");
 SYSCTL_ADD_STRING(ctx, children, OID_AUTO, "if_name", CTLFLAG_RD,
  iflib_get_ifp(softc->ctx)->if_xname, 0, "interface name");

        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_rx_usecs",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_rx_usecs,
   "I", "interrupt coalescing Rx Usecs");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_rx_frames",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_rx_frames,
   "I", "interrupt coalescing Rx Frames");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_rx_usecs_irq",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_rx_usecs_irq,
   "I", "interrupt coalescing Rx Usecs IRQ");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_rx_frames_irq",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_rx_frames_irq,
   "I", "interrupt coalescing Rx Frames IRQ");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_tx_usecs",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_tx_usecs,
   "I", "interrupt coalescing Tx Usces");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_tx_frames",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_tx_frames,
   "I", "interrupt coalescing Tx Frames");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_tx_usecs_irq",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_tx_usecs_irq,
   "I", "interrupt coalescing Tx Usecs IRQ");
        SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "intr_coal_tx_frames_irq",
                        CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_set_coal_tx_frames_irq,
   "I", "interrupt coalescing Tx Frames IRQ");

 return 0;
}
