
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int IB_LINK_LAYER_INFINIBAND ;
 int IB_LINK_LAYER_UNSPECIFIED ;



__attribute__((used)) static enum rdma_link_layer
mlx5_port_type_cap_to_rdma_ll(int port_type_cap)
{
 switch (port_type_cap) {
 case 128:
  return IB_LINK_LAYER_INFINIBAND;
 case 129:
  return IB_LINK_LAYER_ETHERNET;
 default:
  return IB_LINK_LAYER_UNSPECIFIED;
 }
}
