
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_qp_path {scalar_t__ port; int dci_cfi_prio_sl; int grh_mlid; int rgid; int tclass_flowlabel; int hop_limit; int mgid_index; scalar_t__ static_rate; int rlid; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {int traffic_class; int flow_label; TYPE_1__ dgid; int hop_limit; int sgid_index; } ;
struct ib_ah_attr {scalar_t__ port_num; int sl; int src_path_bits; int ah_flags; TYPE_2__ grh; scalar_t__ static_rate; int dlid; } ;


 int IB_AH_GRH ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 int num_ports ;

__attribute__((used)) static void to_ib_ah_attr(struct mlx5_ib_dev *ibdev, struct ib_ah_attr *ib_ah_attr,
    struct mlx5_qp_path *path)
{
 struct mlx5_core_dev *dev = ibdev->mdev;

 memset(ib_ah_attr, 0, sizeof(*ib_ah_attr));
 ib_ah_attr->port_num = path->port;

 if (ib_ah_attr->port_num == 0 ||
     ib_ah_attr->port_num > MLX5_CAP_GEN(dev, num_ports))
  return;

 ib_ah_attr->sl = path->dci_cfi_prio_sl & 0xf;

 ib_ah_attr->dlid = be16_to_cpu(path->rlid);
 ib_ah_attr->src_path_bits = path->grh_mlid & 0x7f;
 ib_ah_attr->static_rate = path->static_rate ? path->static_rate - 5 : 0;
 ib_ah_attr->ah_flags = (path->grh_mlid & (1 << 7)) ? IB_AH_GRH : 0;
 if (ib_ah_attr->ah_flags) {
  ib_ah_attr->grh.sgid_index = path->mgid_index;
  ib_ah_attr->grh.hop_limit = path->hop_limit;
  ib_ah_attr->grh.traffic_class =
   (be32_to_cpu(path->tclass_flowlabel) >> 20) & 0xff;
  ib_ah_attr->grh.flow_label =
   be32_to_cpu(path->tclass_flowlabel) & 0xfffff;
  memcpy(ib_ah_attr->grh.dgid.raw,
         path->rgid, sizeof(ib_ah_attr->grh.dgid.raw));
 }
}
