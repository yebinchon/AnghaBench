
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {scalar_t__ qp_state; int port_num; } ;
struct ib_qp {TYPE_1__* device; } ;
struct TYPE_2__ {int phys_port_cnt; } ;


 int IB_LID_PERMISSIVE ;
 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 int IB_MULTICAST_LID_BASE ;
 scalar_t__ IB_QPS_INIT ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 scalar_t__ be16_to_cpu (int ) ;
 int ib_query_qp (struct ib_qp*,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;
 scalar_t__ rdma_port_get_link_layer (TYPE_1__*,int) ;

__attribute__((used)) static bool is_valid_mcast_lid(struct ib_qp *qp, u16 lid)
{
 struct ib_qp_init_attr init_attr = {};
 struct ib_qp_attr attr = {};
 int num_eth_ports = 0;
 int port;




 if (!ib_query_qp(qp, &attr, IB_QP_STATE | IB_QP_PORT, &init_attr)) {
  if (attr.qp_state >= IB_QPS_INIT) {
   if (rdma_port_get_link_layer(qp->device, attr.port_num) !=
       IB_LINK_LAYER_INFINIBAND)
    return 1;
   goto lid_check;
  }
 }


 for (port = 0; port < qp->device->phys_port_cnt; port++)
  if (rdma_port_get_link_layer(qp->device, port) !=
      IB_LINK_LAYER_INFINIBAND)
   num_eth_ports++;





 if (num_eth_ports)
  return 1;


lid_check:
 return !(lid < be16_to_cpu(IB_MULTICAST_LID_BASE) ||
   lid == be16_to_cpu(IB_LID_PERMISSIVE));
}
