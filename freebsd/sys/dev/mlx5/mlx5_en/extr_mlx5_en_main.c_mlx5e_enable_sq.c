
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_sq_param {int sqc; } ;
struct TYPE_14__ {int npages; int page_shift; } ;
struct TYPE_11__ {int dma; } ;
struct TYPE_12__ {TYPE_7__ buf; TYPE_4__ db; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_9__ {TYPE_1__ mcq; } ;
struct mlx5e_sq {int sqn; TYPE_6__* priv; TYPE_5__ wq_ctrl; TYPE_3__ uar; TYPE_2__ cq; } ;
typedef int __be64 ;
struct TYPE_13__ {int mdev; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_SQC_STATE_RST ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int MLX5_WQ_TYPE_CYCLIC ;
 int PAGE_SHIFT ;
 int cqn ;
 void* create_sq_in ;
 void* ctx ;
 int dbr_addr ;
 int flush_in_error_en ;
 int kvfree (void*) ;
 int log_wq_pg_sz ;
 int memcpy (void*,int ,int) ;
 int mlx5_core_create_sq (int ,void*,int,int *) ;
 int mlx5_fill_page_array (TYPE_7__*,int *) ;
 void* mlx5_vzalloc (int) ;
 void* pas ;
 int state ;
 int tis_lst_sz ;
 int tis_num_0 ;
 int uar_page ;
 int wq_type ;

int
mlx5e_enable_sq(struct mlx5e_sq *sq, struct mlx5e_sq_param *param,
    int tis_num)
{
 void *in;
 void *sqc;
 void *wq;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(create_sq_in) +
     sizeof(u64) * sq->wq_ctrl.buf.npages;
 in = mlx5_vzalloc(inlen);
 if (in == ((void*)0))
  return (-ENOMEM);

 sqc = MLX5_ADDR_OF(create_sq_in, in, ctx);
 wq = MLX5_ADDR_OF(sqc, sqc, wq);

 memcpy(sqc, param->sqc, sizeof(param->sqc));

 MLX5_SET(sqc, sqc, tis_num_0, tis_num);
 MLX5_SET(sqc, sqc, cqn, sq->cq.mcq.cqn);
 MLX5_SET(sqc, sqc, state, MLX5_SQC_STATE_RST);
 MLX5_SET(sqc, sqc, tis_lst_sz, 1);
 MLX5_SET(sqc, sqc, flush_in_error_en, 1);

 MLX5_SET(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
 MLX5_SET(wq, wq, uar_page, sq->uar.index);
 MLX5_SET(wq, wq, log_wq_pg_sz, sq->wq_ctrl.buf.page_shift -
     PAGE_SHIFT);
 MLX5_SET64(wq, wq, dbr_addr, sq->wq_ctrl.db.dma);

 mlx5_fill_page_array(&sq->wq_ctrl.buf,
     (__be64 *) MLX5_ADDR_OF(wq, wq, pas));

 err = mlx5_core_create_sq(sq->priv->mdev, in, inlen, &sq->sqn);

 kvfree(in);

 return (err);
}
