
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_wq_param {int buf_numa_node; int db_numa_node; scalar_t__ linear; } ;
struct TYPE_6__ {int db; } ;
struct TYPE_5__ {int buf; } ;
struct TYPE_7__ {TYPE_1__ direct; } ;
struct mlx5_wq_ctrl {TYPE_2__ db; struct mlx5_core_dev* mdev; TYPE_4__ buf; } ;
struct mlx5_cqwq {int log_sz; int sz_m1; int db; int buf; void* log_stride; } ;
struct mlx5_core_dev {int dummy; } ;


 int INT_MAX ;
 void* MLX5_GET (void*,void*,int ) ;
 int cqe_sz ;
 int log_cq_size ;
 int mlx5_buf_alloc_node (struct mlx5_core_dev*,int ,int,TYPE_4__*,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_cqwq_get_byte_size (struct mlx5_cqwq*) ;
 int mlx5_db_alloc_node (struct mlx5_core_dev*,TYPE_2__*,int ) ;
 int mlx5_db_free (struct mlx5_core_dev*,TYPE_2__*) ;

int mlx5_cqwq_create(struct mlx5_core_dev *mdev, struct mlx5_wq_param *param,
       void *cqc, struct mlx5_cqwq *wq,
       struct mlx5_wq_ctrl *wq_ctrl)
{
 int max_direct = param->linear ? INT_MAX : 0;
 int err;

 wq->log_stride = 6 + MLX5_GET(cqc, cqc, cqe_sz);
 wq->log_sz = MLX5_GET(cqc, cqc, log_cq_size);
 wq->sz_m1 = (1 << wq->log_sz) - 1;

 err = mlx5_db_alloc_node(mdev, &wq_ctrl->db, param->db_numa_node);
 if (err) {
  mlx5_core_warn(mdev, "mlx5_db_alloc() failed, %d\n", err);
  return err;
 }

 err = mlx5_buf_alloc_node(mdev, mlx5_cqwq_get_byte_size(wq),
      max_direct, &wq_ctrl->buf,
      param->buf_numa_node);
 if (err) {
  mlx5_core_warn(mdev, "mlx5_buf_alloc() failed, %d\n", err);
  goto err_db_free;
 }

 wq->buf = wq_ctrl->buf.direct.buf;
 wq->db = wq_ctrl->db.db;

 wq_ctrl->mdev = mdev;

 return 0;

err_db_free:
 mlx5_db_free(mdev, &wq_ctrl->db);

 return err;
}
