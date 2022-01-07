
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int node_type; } ;
typedef enum rdma_transport_type { ____Placeholder_rdma_transport_type } rdma_transport_type ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int RDMA_TRANSPORT_IB ;
 int rdma_node_get_transport (int ) ;
 int rdma_port_get_link_layer (struct ib_device*,int) ;

__attribute__((used)) static bool cma_protocol_roce_dev_port(struct ib_device *device, int port_num)
{
 enum rdma_link_layer ll = rdma_port_get_link_layer(device, port_num);
 enum rdma_transport_type transport =
  rdma_node_get_transport(device->node_type);

 return ll == IB_LINK_LAYER_ETHERNET && transport == RDMA_TRANSPORT_IB;
}
