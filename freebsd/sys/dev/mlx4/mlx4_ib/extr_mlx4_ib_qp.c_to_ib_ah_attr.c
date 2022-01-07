
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_qp_path {int sched_queue; int grh_mylmc; int rgid; int tclass_flowlabel; int hop_limit; int mgid_index; scalar_t__ static_rate; int rlid; } ;
struct mlx4_ib_dev {int ib_dev; struct mlx4_dev* dev; } ;
struct TYPE_4__ {scalar_t__ num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {int traffic_class; int flow_label; TYPE_2__ dgid; int hop_limit; int sgid_index; } ;
struct ib_ah_attr {int port_num; int sl; int src_path_bits; int ah_flags; TYPE_3__ grh; scalar_t__ static_rate; int dlid; } ;


 int IB_AH_GRH ;
 scalar_t__ IB_LINK_LAYER_ETHERNET ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 scalar_t__ rdma_port_get_link_layer (int *,scalar_t__) ;

__attribute__((used)) static void to_ib_ah_attr(struct mlx4_ib_dev *ibdev, struct ib_ah_attr *ib_ah_attr,
    struct mlx4_qp_path *path)
{
 struct mlx4_dev *dev = ibdev->dev;
 int is_eth;

 memset(ib_ah_attr, 0, sizeof *ib_ah_attr);
 ib_ah_attr->port_num = path->sched_queue & 0x40 ? 2 : 1;

 if (ib_ah_attr->port_num == 0 || ib_ah_attr->port_num > dev->caps.num_ports)
  return;

 is_eth = rdma_port_get_link_layer(&ibdev->ib_dev, ib_ah_attr->port_num) ==
  IB_LINK_LAYER_ETHERNET;
 if (is_eth)
  ib_ah_attr->sl = ((path->sched_queue >> 3) & 0x7) |
  ((path->sched_queue & 4) << 1);
 else
  ib_ah_attr->sl = (path->sched_queue >> 2) & 0xf;

 ib_ah_attr->dlid = be16_to_cpu(path->rlid);
 ib_ah_attr->src_path_bits = path->grh_mylmc & 0x7f;
 ib_ah_attr->static_rate = path->static_rate ? path->static_rate - 5 : 0;
 ib_ah_attr->ah_flags = (path->grh_mylmc & (1 << 7)) ? IB_AH_GRH : 0;
 if (ib_ah_attr->ah_flags) {
  ib_ah_attr->grh.sgid_index = path->mgid_index;
  ib_ah_attr->grh.hop_limit = path->hop_limit;
  ib_ah_attr->grh.traffic_class =
   (be32_to_cpu(path->tclass_flowlabel) >> 20) & 0xff;
  ib_ah_attr->grh.flow_label =
   be32_to_cpu(path->tclass_flowlabel) & 0xfffff;
  memcpy(ib_ah_attr->grh.dgid.raw,
   path->rgid, sizeof ib_ah_attr->grh.dgid.raw);
 }
}
