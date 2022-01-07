
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u16 ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5E_MAX_TX_INLINE ;
 unsigned int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int log_bf_reg_size ;

__attribute__((used)) static u16
mlx5e_get_max_inline_cap(struct mlx5_core_dev *mdev)
{
 uint32_t bf_buf_size = (1U << MLX5_CAP_GEN(mdev, log_bf_reg_size)) / 2U;

 bf_buf_size -= sizeof(struct mlx5e_tx_wqe) - 2;


 if (bf_buf_size > MLX5E_MAX_TX_INLINE)
  bf_buf_size = MLX5E_MAX_TX_INLINE;

 return (bf_buf_size);
}
