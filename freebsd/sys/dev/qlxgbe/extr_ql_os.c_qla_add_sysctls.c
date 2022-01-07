
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbg_level; int enable_minidump; int enable_driverstate_dump; int enable_error_recovery; int ms_delay_after_init; int std_replenish; int hw_lock_failed; int hw_vlan_tx_frames; int tx_tso_frames; int ipv6_lro; int ipv4_lro; int fw_ver_str; int pci_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int QL_STD_REPLENISH_THRES ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_QUAD (int ,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_STRING (int ,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int,int*,int,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int qla_sysctl_get_link_status ;
 int ver_str ;

__attribute__((used)) static void
qla_add_sysctls(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

 SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "version", CTLFLAG_RD,
  ver_str, 0, "Driver Version");

        SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "fw_version", CTLFLAG_RD,
                ha->fw_ver_str, 0, "firmware version");

        SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "link_status", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qla_sysctl_get_link_status, "I", "Link Status");

 ha->dbg_level = 0;
        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &ha->dbg_level, ha->dbg_level, "Debug Level");

 ha->enable_minidump = 1;
 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "enable_minidump", CTLFLAG_RW,
  &ha->enable_minidump, ha->enable_minidump,
  "Minidump retrival prior to error recovery "
  "is enabled only when this is set");

 ha->enable_driverstate_dump = 1;
 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "enable_driverstate_dump", CTLFLAG_RW,
  &ha->enable_driverstate_dump, ha->enable_driverstate_dump,
  "Driver State retrival prior to error recovery "
  "is enabled only when this is set");

 ha->enable_error_recovery = 1;
 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "enable_error_recovery", CTLFLAG_RW,
  &ha->enable_error_recovery, ha->enable_error_recovery,
  "when set error recovery is enabled on fatal errors "
  "otherwise the port is turned offline");

 ha->ms_delay_after_init = 1000;
 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "ms_delay_after_init", CTLFLAG_RW,
  &ha->ms_delay_after_init, ha->ms_delay_after_init,
  "millisecond delay after hw_init");

 ha->std_replenish = QL_STD_REPLENISH_THRES;
        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "std_replenish", CTLFLAG_RW,
                &ha->std_replenish, ha->std_replenish,
                "Threshold for Replenishing Standard Frames");

        SYSCTL_ADD_QUAD(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "ipv4_lro",
                CTLFLAG_RD, &ha->ipv4_lro,
                "number of ipv4 lro completions");

        SYSCTL_ADD_QUAD(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "ipv6_lro",
                CTLFLAG_RD, &ha->ipv6_lro,
                "number of ipv6 lro completions");

 SYSCTL_ADD_QUAD(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "tx_tso_frames",
  CTLFLAG_RD, &ha->tx_tso_frames,
  "number of Tx TSO Frames");

 SYSCTL_ADD_QUAD(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "hw_vlan_tx_frames",
  CTLFLAG_RD, &ha->hw_vlan_tx_frames,
  "number of Tx VLAN Frames");

 SYSCTL_ADD_QUAD(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "hw_lock_failed",
  CTLFLAG_RD, &ha->hw_lock_failed,
  "number of hw_lock failures");

        return;
}
