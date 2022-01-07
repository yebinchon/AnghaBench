
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_umr_wr {int mkey; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_send_wr {int send_flags; int opcode; } ;


 int MLX5_IB_SEND_UMR_FAIL_IF_FREE ;
 int MLX5_IB_SEND_UMR_UNREG ;
 int MLX5_IB_WR_UMR ;
 struct mlx5_umr_wr* umr_wr (struct ib_send_wr*) ;

__attribute__((used)) static void prep_umr_unreg_wqe(struct mlx5_ib_dev *dev,
          struct ib_send_wr *wr, u32 key)
{
 struct mlx5_umr_wr *umrwr = umr_wr(wr);

 wr->send_flags = MLX5_IB_SEND_UMR_UNREG | MLX5_IB_SEND_UMR_FAIL_IF_FREE;
 wr->opcode = MLX5_IB_WR_UMR;
 umrwr->mkey = key;
}
