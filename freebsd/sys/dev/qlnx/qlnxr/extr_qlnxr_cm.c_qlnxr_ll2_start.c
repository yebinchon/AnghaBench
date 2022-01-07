
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int gsi_ll2_handle; TYPE_3__* ha; int rdma_ctx; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ecore_ll2_cbs {struct qlnxr_dev* cookie; void* tx_release_cb; int rx_release_cb; void* tx_comp_cb; int rx_comp_cb; } ;
struct TYPE_6__ {int rx_num_desc; int rx_drop_ttl0_flg; int tx_num_desc; int gsi_enable; void* ai_err_no_buf; void* ai_err_packet_too_big; int tx_dest; scalar_t__ tx_tc; scalar_t__ rx_vlan_removal_en; int mtu; int conn_type; } ;
struct ecore_ll2_acquire_data {int* p_connection_handle; struct ecore_ll2_cbs* cbs; TYPE_2__ input; } ;
typedef int data ;
struct TYPE_7__ {int primary_mac; TYPE_1__* ifp; } ;
struct TYPE_5__ {int if_mtu; } ;


 void* ECORE_LL2_DROP_PACKET ;
 int ECORE_LL2_TX_DEST_NW ;
 int ECORE_LL2_TYPE_ROCE ;
 int QL_DPRINT11 (TYPE_3__*,char*,...) ;
 int QL_DPRINT12 (TYPE_3__*,char*,...) ;
 int ecore_ll2_acquire_connection (int ,struct ecore_ll2_acquire_data*) ;
 int ecore_ll2_establish_connection (int ,int) ;
 int ecore_ll2_release_connection (int ,int) ;
 int ecore_ll2_terminate_connection (int ,int) ;
 int memset (struct ecore_ll2_acquire_data*,int ,int) ;
 int qlnx_rdma_ll2_set_mac_filter (int ,int *,int ) ;
 int qlnxr_ll2_complete_rx_packet ;
 void* qlnxr_ll2_complete_tx_packet ;
 int qlnxr_ll2_release_rx_packet ;

int qlnxr_ll2_start(struct qlnxr_dev *dev,
     struct ib_qp_init_attr *attrs,
     struct qlnxr_qp *qp)
{
 struct ecore_ll2_acquire_data data;
 struct ecore_ll2_cbs cbs;
 int rc;

 QL_DPRINT12(dev->ha, "enter\n");


 cbs.rx_comp_cb = qlnxr_ll2_complete_rx_packet;
 cbs.tx_comp_cb = qlnxr_ll2_complete_tx_packet;
 cbs.rx_release_cb = qlnxr_ll2_release_rx_packet;
 cbs.tx_release_cb = qlnxr_ll2_complete_tx_packet;
 cbs.cookie = dev;
 dev->gsi_ll2_handle = 0xFF;

 memset(&data, 0, sizeof(data));
 data.input.conn_type = ECORE_LL2_TYPE_ROCE;
 data.input.mtu = dev->ha->ifp->if_mtu;
 data.input.rx_num_desc = 8 * 1024;
 data.input.rx_drop_ttl0_flg = 1;
 data.input.rx_vlan_removal_en = 0;
 data.input.tx_num_desc = 8 * 1024;
 data.input.tx_tc = 0;
 data.input.tx_dest = ECORE_LL2_TX_DEST_NW;
 data.input.ai_err_packet_too_big = ECORE_LL2_DROP_PACKET;
 data.input.ai_err_no_buf = ECORE_LL2_DROP_PACKET;
 data.input.gsi_enable = 1;
 data.p_connection_handle = &dev->gsi_ll2_handle;
 data.cbs = &cbs;

 rc = ecore_ll2_acquire_connection(dev->rdma_ctx, &data);

 if (rc) {
  QL_DPRINT11(dev->ha,
   "ecore_ll2_acquire_connection failed: %d\n",
   rc);
  return rc;
 }

 QL_DPRINT11(dev->ha,
  "ll2 connection acquired successfully\n");
 rc = ecore_ll2_establish_connection(dev->rdma_ctx,
  dev->gsi_ll2_handle);

 if (rc) {
  QL_DPRINT11(dev->ha,
   "ecore_ll2_establish_connection failed\n", rc);
  goto err1;
 }

 QL_DPRINT11(dev->ha,
  "ll2 connection established successfully\n");
 rc = qlnx_rdma_ll2_set_mac_filter(dev->rdma_ctx, ((void*)0),
   dev->ha->primary_mac);
 if (rc) {
  QL_DPRINT11(dev->ha, "qlnx_rdma_ll2_set_mac_filter failed\n", rc);
  goto err2;
 }

 QL_DPRINT12(dev->ha, "exit rc = %d\n", rc);
 return 0;

err2:
 ecore_ll2_terminate_connection(dev->rdma_ctx, dev->gsi_ll2_handle);
err1:
 ecore_ll2_release_connection(dev->rdma_ctx, dev->gsi_ll2_handle);

 QL_DPRINT12(dev->ha, "exit rc = %d\n", rc);
 return rc;
}
