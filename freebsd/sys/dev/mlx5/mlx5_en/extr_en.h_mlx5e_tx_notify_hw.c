
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ map; scalar_t__ bf_map; } ;
struct TYPE_6__ {int * db; } ;
struct mlx5e_sq {int bf_buf_size; int bf_offset; TYPE_2__* priv; TYPE_1__ uar; int pc; TYPE_3__ wq; } ;
struct TYPE_5__ {int doorbell_lock; } ;


 scalar_t__ MLX5_BF_OFFSET ;
 int MLX5_GET_DOORBELL_LOCK (int *) ;
 int __iowrite64_copy (scalar_t__,int *,int) ;
 int cpu_to_be32 (int ) ;
 int mlx5_write64 (int *,scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static inline void
mlx5e_tx_notify_hw(struct mlx5e_sq *sq, u32 *wqe, int bf_sz)
{
 u16 ofst = MLX5_BF_OFFSET + sq->bf_offset;


 wmb();

 *sq->wq.db = cpu_to_be32(sq->pc);





 wmb();

 if (bf_sz) {
  __iowrite64_copy(sq->uar.bf_map + ofst, wqe, bf_sz);


  wmb();

 } else {
  mlx5_write64(wqe, sq->uar.map + ofst,
      MLX5_GET_DOORBELL_LOCK(&sq->priv->doorbell_lock));
 }

 sq->bf_offset ^= sq->bf_buf_size;
}
