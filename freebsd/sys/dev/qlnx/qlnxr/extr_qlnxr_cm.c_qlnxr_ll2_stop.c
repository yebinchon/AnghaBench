
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int gsi_ll2_handle; int ha; int rdma_ctx; int gsi_ll2_mac_address; } ;


 int QL_DPRINT12 (int ,char*,...) ;
 int ecore_ll2_release_connection (int ,int) ;
 int ecore_ll2_terminate_connection (int ,int) ;
 int qlnx_rdma_ll2_set_mac_filter (int ,int ,int *) ;

int
qlnxr_ll2_stop(struct qlnxr_dev *dev)
{
 int rc;

 QL_DPRINT12(dev->ha, "enter\n");

 if (dev->gsi_ll2_handle == 0xFF)
  return 0;


 rc = qlnx_rdma_ll2_set_mac_filter(dev->rdma_ctx,
     dev->gsi_ll2_mac_address, ((void*)0));

 rc = ecore_ll2_terminate_connection(dev->rdma_ctx,
   dev->gsi_ll2_handle);

 ecore_ll2_release_connection(dev->rdma_ctx, dev->gsi_ll2_handle);

 dev->gsi_ll2_handle = 0xFF;

 QL_DPRINT12(dev->ha, "exit rc = %d\n", rc);
 return rc;
}
