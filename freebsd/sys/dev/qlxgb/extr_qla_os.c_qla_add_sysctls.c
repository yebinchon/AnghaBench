
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fw_ver_str; int pci_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int ,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,scalar_t__*,scalar_t__,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 scalar_t__ dbg_level ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 scalar_t__ free_pkt_thres ;
 scalar_t__ jumbo_replenish ;
 int qla_sysctl_get_stats ;
 scalar_t__ rcv_pkt_thres ;
 scalar_t__ rcv_pkt_thres_d ;
 scalar_t__ snd_pkt_thres ;
 scalar_t__ std_replenish ;

__attribute__((used)) static void
qla_add_sysctls(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

        SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "stats", CTLTYPE_INT | CTLFLAG_RD,
                (void *)ha, 0,
                qla_sysctl_get_stats, "I", "Statistics");

 SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "fw_version", CTLFLAG_RD,
  ha->fw_ver_str, 0, "firmware version");

 dbg_level = 0;
        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &dbg_level, dbg_level, "Debug Level");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "std_replenish", CTLFLAG_RW,
                &std_replenish, std_replenish,
                "Threshold for Replenishing Standard Frames");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "jumbo_replenish", CTLFLAG_RW,
                &jumbo_replenish, jumbo_replenish,
                "Threshold for Replenishing Jumbo Frames");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "rcv_pkt_thres", CTLFLAG_RW,
                &rcv_pkt_thres, rcv_pkt_thres,
                "Threshold for # of rcv pkts to trigger indication isr");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "rcv_pkt_thres_d", CTLFLAG_RW,
                &rcv_pkt_thres_d, rcv_pkt_thres_d,
                "Threshold for # of rcv pkts to trigger indication defered");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "snd_pkt_thres", CTLFLAG_RW,
                &snd_pkt_thres, snd_pkt_thres,
                "Threshold for # of snd packets");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "free_pkt_thres", CTLFLAG_RW,
                &free_pkt_thres, free_pkt_thres,
                "Threshold for # of packets to free at a time");

        return;
}
