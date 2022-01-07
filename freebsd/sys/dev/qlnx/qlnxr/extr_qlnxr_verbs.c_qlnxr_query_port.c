
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct qlnxr_dev {TYPE_2__* ha; int * rdma_ctx; } ;
struct ib_port_attr {int phys_state; int gid_tbl_len; int pkey_tbl_len; int max_vl_num; int max_msg_sz; int active_width; int active_speed; int state; scalar_t__ qkey_viol_cntr; int bad_pkey_cntr; scalar_t__ port_cap_flags; scalar_t__ sm_sl; scalar_t__ sm_lid; scalar_t__ lmc; scalar_t__ lid; int active_mtu; int max_mtu; } ;
struct ib_device {int dummy; } ;
struct ecore_rdma_port {scalar_t__ port_state; int link_speed; int max_msg_size; int pkey_bad_counter; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {int if_mtu; } ;


 scalar_t__ ECORE_RDMA_PORT_UP ;
 int EINVAL ;
 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 int QLNXR_MAX_SGID ;
 int QLNXR_ROCE_PKEY_TABLE_LEN ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT12 (TYPE_2__*,char*,...) ;
 struct ecore_rdma_port* ecore_rdma_query_port (int *) ;
 int get_link_speed_and_width (int ,int *,int *) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;
 int iboe_get_mtu (int ) ;
 int memset (struct ib_port_attr*,int ,int) ;

int
qlnxr_query_port(struct ib_device *ibdev, uint8_t port,
 struct ib_port_attr *attr)
{
 struct qlnxr_dev *dev;
 struct ecore_rdma_port *rdma_port;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev(ibdev);
 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (port > 1) {
  QL_DPRINT12(ha, "port [%d] > 1 \n", port);
  return -EINVAL;
 }

 if (dev->rdma_ctx == ((void*)0)) {
  QL_DPRINT12(ha, "rdma_ctx == NULL\n");
  return -EINVAL;
 }

 rdma_port = ecore_rdma_query_port(dev->rdma_ctx);
 memset(attr, 0, sizeof *attr);

 if (rdma_port->port_state == ECORE_RDMA_PORT_UP) {
  attr->state = IB_PORT_ACTIVE;
  attr->phys_state = 5;
 } else {
  attr->state = IB_PORT_DOWN;
  attr->phys_state = 3;
 }

 attr->max_mtu = IB_MTU_4096;
 attr->active_mtu = iboe_get_mtu(dev->ha->ifp->if_mtu);
 attr->lid = 0;
 attr->lmc = 0;
 attr->sm_lid = 0;
 attr->sm_sl = 0;
 attr->port_cap_flags = 0;

 if (QLNX_IS_IWARP(dev)) {
  attr->gid_tbl_len = 1;
  attr->pkey_tbl_len = 1;
 } else {
  attr->gid_tbl_len = QLNXR_MAX_SGID;
  attr->pkey_tbl_len = QLNXR_ROCE_PKEY_TABLE_LEN;
 }

 attr->bad_pkey_cntr = rdma_port->pkey_bad_counter;
 attr->qkey_viol_cntr = 0;

 get_link_speed_and_width(rdma_port->link_speed,
     &attr->active_speed, &attr->active_width);

 attr->max_msg_sz = rdma_port->max_msg_size;
 attr->max_vl_num = 4;

 QL_DPRINT12(ha, "state = %d phys_state = %d "
  " link_speed = %d active_speed = %d active_width = %d"
  " attr->gid_tbl_len = %d attr->pkey_tbl_len = %d"
  " max_msg_sz = 0x%x max_vl_num = 0x%x \n",
  attr->state, attr->phys_state,
  rdma_port->link_speed, attr->active_speed,
  attr->active_width, attr->gid_tbl_len, attr->pkey_tbl_len,
  attr->max_msg_sz, attr->max_vl_num);

 QL_DPRINT12(ha, "exit\n");
 return 0;
}
