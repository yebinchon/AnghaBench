
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ib_sa_mcmember_rec {int traffic_class; int hop_limit; int flow_label; int mgid; int rate; int sl; int mlid; int port_gid; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int traffic_class; int hop_limit; int flow_label; void* sgid_index; int dgid; } ;
struct ib_ah_attr {TYPE_1__ grh; int ah_flags; int static_rate; void* port_num; int sl; int dlid; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int EINVAL ;
 int IB_AH_GRH ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int ib_find_cached_gid_by_port (struct ib_device*,int *,int,void*,struct net_device*,scalar_t__*) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,void*) ;
 int rdma_protocol_roce (struct ib_device*,void*) ;

int ib_init_ah_from_mcmember(struct ib_device *device, u8 port_num,
        struct ib_sa_mcmember_rec *rec,
        struct net_device *ndev,
        enum ib_gid_type gid_type,
        struct ib_ah_attr *ah_attr)
{
 int ret;
 u16 gid_index;




 if (rdma_protocol_ib(device, port_num))
  ndev = ((void*)0);
 else if (!rdma_protocol_roce(device, port_num))
  return -EINVAL;

 ret = ib_find_cached_gid_by_port(device, &rec->port_gid,
      gid_type, port_num,
      ndev,
      &gid_index);
 if (ret)
  return ret;

 memset(ah_attr, 0, sizeof *ah_attr);
 ah_attr->dlid = be16_to_cpu(rec->mlid);
 ah_attr->sl = rec->sl;
 ah_attr->port_num = port_num;
 ah_attr->static_rate = rec->rate;

 ah_attr->ah_flags = IB_AH_GRH;
 ah_attr->grh.dgid = rec->mgid;

 ah_attr->grh.sgid_index = (u8) gid_index;
 ah_attr->grh.flow_label = be32_to_cpu(rec->flow_label);
 ah_attr->grh.hop_limit = rec->hop_limit;
 ah_attr->grh.traffic_class = rec->traffic_class;

 return 0;
}
