
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union rdma_network_hdr {int dummy; } rdma_network_hdr ;
typedef int u8 ;
struct ib_grh {scalar_t__ next_hdr; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;


 scalar_t__ IPPROTO_UDP ;
 int RDMA_NETWORK_IB ;
 int RDMA_NETWORK_IPV4 ;
 int RDMA_NETWORK_IPV6 ;
 int RDMA_NETWORK_ROCE_V1 ;
 int ib_get_header_version (union rdma_network_hdr const*) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;

__attribute__((used)) static enum rdma_network_type ib_get_net_type_by_grh(struct ib_device *device,
           u8 port_num,
           const struct ib_grh *grh)
{
 int grh_version;

 if (rdma_protocol_ib(device, port_num))
  return RDMA_NETWORK_IB;

 grh_version = ib_get_header_version((const union rdma_network_hdr *)grh);

 if (grh_version == 4)
  return RDMA_NETWORK_IPV4;

 if (grh->next_hdr == IPPROTO_UDP)
  return RDMA_NETWORK_IPV6;

 return RDMA_NETWORK_ROCE_V1;
}
