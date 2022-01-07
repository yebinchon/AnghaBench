
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pci_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int sysctl_num_rds_rings ;
 int sysctl_num_sds_rings ;

void
qla_hw_add_sysctls(qla_host_t *ha)
{
        device_t dev;

        dev = ha->pci_dev;

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "num_rds_rings", CTLFLAG_RD, &sysctl_num_rds_rings,
  sysctl_num_rds_rings, "Number of Rcv Descriptor Rings");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "num_sds_rings", CTLFLAG_RD, &sysctl_num_sds_rings,
  sysctl_num_sds_rings, "Number of Status Descriptor Rings");
}
