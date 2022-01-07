
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num_qps; int num_srqs; int min_dpis; int rdma_protocol; void* gl_pi; scalar_t__ roce_edpm_mode; } ;
struct TYPE_7__ {int num_cons; } ;
struct ecore_pf_params {TYPE_2__ rdma_pf_params; TYPE_1__ eth_pf_params; } ;
struct ecore_dev {int rx_coalesce_usecs; int tx_coalesce_usecs; int int_coalescing_mode; int int_mode; } ;
struct TYPE_9__ {int num_rss; int num_tc; scalar_t__ personality; int rx_coalesce_usecs; int tx_coalesce_usecs; struct ecore_dev cdev; int pci_dev; } ;
typedef TYPE_3__ qlnx_host_t ;


 int ECORE_COAL_MODE_ENABLE ;
 int ECORE_INT_MODE_MSIX ;
 scalar_t__ ECORE_PCI_ETH_IWARP ;
 scalar_t__ ECORE_PCI_ETH_ROCE ;
 int ECORE_RDMA_PROTOCOL_IWARP ;
 int ECORE_RDMA_PROTOCOL_ROCE ;
 void* ECORE_ROCE_PROTOCOL_INDEX ;
 int device_printf (int ,char*) ;
 int memset (struct ecore_pf_params*,int ,int) ;
 int qlnx_nic_setup (struct ecore_dev*,struct ecore_pf_params*) ;
 int qlnx_nic_start (struct ecore_dev*) ;
 int qlnx_set_lldp_tlvx (TYPE_3__*,int *) ;
 scalar_t__ qlnx_vf_device (TYPE_3__*) ;

__attribute__((used)) static int
qlnx_slowpath_start(qlnx_host_t *ha)
{
 struct ecore_dev *cdev;
 struct ecore_pf_params pf_params;
 int rc;

 memset(&pf_params, 0, sizeof(struct ecore_pf_params));
 pf_params.eth_pf_params.num_cons =
  (ha->num_rss) * (ha->num_tc + 1);
 cdev = &ha->cdev;

 rc = qlnx_nic_setup(cdev, &pf_params);
        if (rc)
                goto qlnx_slowpath_start_exit;

        cdev->int_mode = ECORE_INT_MODE_MSIX;
        cdev->int_coalescing_mode = ECORE_COAL_MODE_ENABLE;






 rc = qlnx_nic_start(cdev);

 ha->rx_coalesce_usecs = cdev->rx_coalesce_usecs;
 ha->tx_coalesce_usecs = cdev->tx_coalesce_usecs;





qlnx_slowpath_start_exit:

 return (rc);
}
