
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_xrc_seg {int dummy; } ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_wqe_raddr_seg {int dummy; } ;
struct mlx5_wqe_eth_seg {int dummy; } ;
struct mlx5_wqe_eth_pad {int dummy; } ;
struct mlx5_wqe_datagram_seg {int dummy; } ;
struct mlx5_wqe_ctrl_seg {int dummy; } ;
struct mlx5_wqe_atomic_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct ib_qp_init_attr {int qp_type; int create_flags; } ;


 int EINVAL ;






 int IB_QP_CREATE_IPOIB_UD_LSO ;


 int max (int,int) ;

__attribute__((used)) static int sq_overhead(struct ib_qp_init_attr *attr)
{
 int size = 0;

 switch (attr->qp_type) {
 case 131:
  size += sizeof(struct mlx5_wqe_xrc_seg);

 case 135:
  size += sizeof(struct mlx5_wqe_ctrl_seg) +
   max(sizeof(struct mlx5_wqe_atomic_seg) +
       sizeof(struct mlx5_wqe_raddr_seg),
       sizeof(struct mlx5_wqe_umr_ctrl_seg) +
       sizeof(struct mlx5_mkey_seg));
  break;

 case 130:
  return 0;

 case 133:
  size += sizeof(struct mlx5_wqe_ctrl_seg) +
   max(sizeof(struct mlx5_wqe_raddr_seg),
       sizeof(struct mlx5_wqe_umr_ctrl_seg) +
       sizeof(struct mlx5_mkey_seg));
  break;

 case 132:
  if (attr->create_flags & IB_QP_CREATE_IPOIB_UD_LSO)
   size += sizeof(struct mlx5_wqe_eth_pad) +
    sizeof(struct mlx5_wqe_eth_seg);

 case 134:
 case 129:
  size += sizeof(struct mlx5_wqe_ctrl_seg) +
   sizeof(struct mlx5_wqe_datagram_seg);
  break;

 case 128:
  size += sizeof(struct mlx5_wqe_ctrl_seg) +
   sizeof(struct mlx5_wqe_umr_ctrl_seg) +
   sizeof(struct mlx5_mkey_seg);
  break;

 default:
  return -EINVAL;
 }

 return size;
}
