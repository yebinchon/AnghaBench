
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pci_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int ,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int,scalar_t__*,scalar_t__,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 scalar_t__ qls_dbg_level ;
 int qls_sysctl_get_drvr_stats ;
 int ver_str ;

__attribute__((used)) static void
qls_add_sysctls(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

 SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "version", CTLFLAG_RD,
  ver_str, 0, "Driver Version");

 qls_dbg_level = 0;
        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &qls_dbg_level, qls_dbg_level, "Debug Level");

        SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "drvr_stats", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_sysctl_get_drvr_stats, "I", "Driver Maintained Statistics");

        return;
}
