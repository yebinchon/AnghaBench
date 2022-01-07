
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union rdma_network_hdr {int dummy; } rdma_network_hdr ;
struct TYPE_3__ {scalar_t__ interface_id; } ;
union ib_gid {TYPE_1__ global; } ;
typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct ib_wc {int wc_flags; int network_hdr_type; int vlan_id; int dlid_path_bits; int sl; int slid; } ;
struct ib_grh {int version_tclass_flow; } ;
struct ib_gid_attr {int * ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int flow_label; int hop_limit; int traffic_class; void* sgid_index; union ib_gid dgid; } ;
struct ib_ah_attr {TYPE_2__ grh; int ah_flags; void* port_num; int src_path_bits; int sl; int dlid; int dmac; } ;
typedef enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int ENODEV ;
 int EPROTOTYPE ;
 int IB_AH_GRH ;
 int IB_GID_TYPE_IB ;
 int IB_SA_WELL_KNOWN_GUID ;
 int IB_WC_GRH ;
 int IB_WC_WITH_NETWORK_HDR_TYPE ;
 int IB_WC_WITH_VLAN ;
 int RDMA_NETWORK_IB ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be64 (int ) ;
 int dev_put (int *) ;
 int get_gids_from_rdma_hdr (union rdma_network_hdr const*,int,union ib_gid*,union ib_gid*) ;
 int get_sgid_index_from_eth (struct ib_device*,void*,int const,union ib_gid*,int,int*) ;
 int ib_find_cached_gid_by_port (struct ib_device*,union ib_gid*,int,void*,int *,int*) ;
 int ib_get_cached_gid (struct ib_device*,void*,int,union ib_gid*,struct ib_gid_attr*) ;
 int ib_get_net_type_by_grh (struct ib_device*,void*,struct ib_grh const*) ;
 int ib_network_to_gid_type (int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 int rdma_addr_find_l2_eth_by_grh (union ib_gid*,union ib_gid*,int ,int *,int*) ;
 scalar_t__ rdma_cap_eth_ah (struct ib_device*,void*) ;
 scalar_t__ rdma_protocol_roce (struct ib_device*,void*) ;

int ib_init_ah_from_wc(struct ib_device *device, u8 port_num,
         const struct ib_wc *wc, const struct ib_grh *grh,
         struct ib_ah_attr *ah_attr)
{
 u32 flow_class;
 u16 gid_index = 0;
 int ret;
 enum rdma_network_type net_type = RDMA_NETWORK_IB;
 enum ib_gid_type gid_type = IB_GID_TYPE_IB;
 int hoplimit = 0xff;
 union ib_gid dgid;
 union ib_gid sgid;

 memset(ah_attr, 0, sizeof *ah_attr);
 if (rdma_cap_eth_ah(device, port_num)) {
  if (wc->wc_flags & IB_WC_WITH_NETWORK_HDR_TYPE)
   net_type = wc->network_hdr_type;
  else
   net_type = ib_get_net_type_by_grh(device, port_num, grh);
  gid_type = ib_network_to_gid_type(net_type);
 }
 ret = get_gids_from_rdma_hdr((const union rdma_network_hdr *)grh, net_type,
         &sgid, &dgid);
 if (ret)
  return ret;

 if (rdma_protocol_roce(device, port_num)) {
  struct ib_gid_attr dgid_attr;
  const u16 vlan_id = (wc->wc_flags & IB_WC_WITH_VLAN) ?
    wc->vlan_id : 0xffff;

  if (!(wc->wc_flags & IB_WC_GRH))
   return -EPROTOTYPE;

  ret = get_sgid_index_from_eth(device, port_num, vlan_id,
           &dgid, gid_type, &gid_index);
  if (ret)
   return ret;

  ret = ib_get_cached_gid(device, port_num, gid_index, &dgid, &dgid_attr);
  if (ret)
   return ret;

  if (dgid_attr.ndev == ((void*)0))
   return -ENODEV;

  ret = rdma_addr_find_l2_eth_by_grh(&dgid, &sgid, ah_attr->dmac,
      dgid_attr.ndev, &hoplimit);

  dev_put(dgid_attr.ndev);
  if (ret)
   return ret;
 }

 ah_attr->dlid = wc->slid;
 ah_attr->sl = wc->sl;
 ah_attr->src_path_bits = wc->dlid_path_bits;
 ah_attr->port_num = port_num;

 if (wc->wc_flags & IB_WC_GRH) {
  ah_attr->ah_flags = IB_AH_GRH;
  ah_attr->grh.dgid = sgid;

  if (!rdma_cap_eth_ah(device, port_num)) {
   if (dgid.global.interface_id != cpu_to_be64(IB_SA_WELL_KNOWN_GUID)) {
    ret = ib_find_cached_gid_by_port(device, &dgid,
         IB_GID_TYPE_IB,
         port_num, ((void*)0),
         &gid_index);
    if (ret)
     return ret;
   }
  }

  ah_attr->grh.sgid_index = (u8) gid_index;
  flow_class = be32_to_cpu(grh->version_tclass_flow);
  ah_attr->grh.flow_label = flow_class & 0xFFFFF;
  ah_attr->grh.hop_limit = hoplimit;
  ah_attr->grh.traffic_class = (flow_class >> 20) & 0xFF;
 }
 return 0;
}
