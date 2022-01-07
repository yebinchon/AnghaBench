
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_tx_rings; int num_rx_rings; int pci_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int MAX_RX_RINGS ;
 int MAX_TX_RINGS ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int qls_syctl_link_status ;
 int qls_syctl_mpi_dump ;

void
qls_hw_add_sysctls(qla_host_t *ha)
{
        device_t dev;

        dev = ha->pci_dev;

 ha->num_rx_rings = MAX_RX_RINGS; ha->num_tx_rings = MAX_TX_RINGS;

 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
  SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
  OID_AUTO, "num_rx_rings", CTLFLAG_RD, &ha->num_rx_rings,
  ha->num_rx_rings, "Number of Completion Queues");

        SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "num_tx_rings", CTLFLAG_RD, &ha->num_tx_rings,
  ha->num_tx_rings, "Number of Transmit Rings");

        SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "mpi_dump", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_syctl_mpi_dump, "I", "MPI Dump");

        SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
                SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
                OID_AUTO, "link_status", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_syctl_link_status, "I", "Link Status");
}
