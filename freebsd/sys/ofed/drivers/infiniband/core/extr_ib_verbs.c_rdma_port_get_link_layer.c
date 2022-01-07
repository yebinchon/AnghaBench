
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int (* get_link_layer ) (struct ib_device*,int ) ;int node_type; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int IB_LINK_LAYER_INFINIBAND ;
 int IB_LINK_LAYER_UNSPECIFIED ;




 int rdma_node_get_transport (int ) ;
 int stub1 (struct ib_device*,int ) ;

enum rdma_link_layer rdma_port_get_link_layer(struct ib_device *device, u8 port_num)
{
 if (device->get_link_layer)
  return device->get_link_layer(device, port_num);

 switch (rdma_node_get_transport(device->node_type)) {
 case 131:
  return IB_LINK_LAYER_INFINIBAND;
 case 130:
 case 129:
 case 128:
  return IB_LINK_LAYER_ETHERNET;
 default:
  return IB_LINK_LAYER_UNSPECIFIED;
 }
}
