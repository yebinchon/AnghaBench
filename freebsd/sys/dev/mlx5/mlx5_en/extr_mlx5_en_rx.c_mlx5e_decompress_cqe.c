
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int sz_m1; int cc; int log_sz; } ;
struct mlx5e_cq {TYPE_1__ wq; } ;
struct mlx5_mini_cqe8 {int rx_hash_result; int byte_cnt; } ;
struct mlx5_cqe64 {int op_own; scalar_t__ check_sum; int rss_hash_result; int wqe_counter; int byte_cnt; } ;


 int cpu_to_be16 (int) ;

__attribute__((used)) static inline void
mlx5e_decompress_cqe(struct mlx5e_cq *cq, struct mlx5_cqe64 *title,
    struct mlx5_mini_cqe8 *mini,
    u16 wqe_counter, int i)
{





 title->byte_cnt = mini->byte_cnt;
 title->wqe_counter = cpu_to_be16((wqe_counter + i) & cq->wq.sz_m1);
 title->rss_hash_result = mini->rx_hash_result;




 title->check_sum = 0;
 title->op_own = (title->op_own & 0xf0) |
     (((cq->wq.cc + i) >> cq->wq.log_sz) & 1);
}
