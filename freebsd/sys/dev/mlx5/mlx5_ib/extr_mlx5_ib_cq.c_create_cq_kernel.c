
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u32 ;
struct mlx5_ib_dev {TYPE_6__* mdev; } ;
struct TYPE_20__ {scalar_t__ db; } ;
struct TYPE_18__ {int npages; scalar_t__ page_shift; } ;
struct TYPE_13__ {TYPE_5__ buf; } ;
struct TYPE_14__ {int cqe_sz; scalar_t__ arm_db; scalar_t__ set_ci_db; } ;
struct mlx5_ib_cq {TYPE_7__ db; TYPE_10__ buf; TYPE_1__ mcq; } ;
typedef int __be64 ;
struct TYPE_16__ {TYPE_2__* uars; } ;
struct TYPE_17__ {TYPE_3__ uuari; } ;
struct TYPE_19__ {TYPE_4__ priv; } ;
struct TYPE_15__ {int index; } ;


 int ENOMEM ;
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ;
 void* MLX5_ADDR_OF (int ,int *,int *) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int MLX5_SET (void*,void*,int ,scalar_t__) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int alloc_cq_buf (struct mlx5_ib_dev*,TYPE_10__*,int,int) ;
 int * cq_context ;
 int create_cq_in ;
 int free_cq_buf (struct mlx5_ib_dev*,TYPE_10__*) ;
 int init_cq_buf (struct mlx5_ib_cq*,TYPE_10__*) ;
 int log_page_size ;
 int mlx5_db_alloc (TYPE_6__*,TYPE_7__*) ;
 int mlx5_db_free (TYPE_6__*,TYPE_7__*) ;
 int mlx5_fill_page_array (TYPE_5__*,int *) ;
 int * mlx5_vzalloc (int) ;

__attribute__((used)) static int create_cq_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq,
       int entries, int cqe_size,
       u32 **cqb, int *index, int *inlen)
{
 __be64 *pas;
 void *cqc;
 int err;

 err = mlx5_db_alloc(dev->mdev, &cq->db);
 if (err)
  return err;

 cq->mcq.set_ci_db = cq->db.db;
 cq->mcq.arm_db = cq->db.db + 1;
 cq->mcq.cqe_sz = cqe_size;

 err = alloc_cq_buf(dev, &cq->buf, entries, cqe_size);
 if (err)
  goto err_db;

 init_cq_buf(cq, &cq->buf);

 *inlen = MLX5_ST_SZ_BYTES(create_cq_in) +
   MLX5_FLD_SZ_BYTES(create_cq_in, pas[0]) * cq->buf.buf.npages;
 *cqb = mlx5_vzalloc(*inlen);
 if (!*cqb) {
  err = -ENOMEM;
  goto err_buf;
 }

 pas = (__be64 *)MLX5_ADDR_OF(create_cq_in, *cqb, pas);
 mlx5_fill_page_array(&cq->buf.buf, pas);

 cqc = MLX5_ADDR_OF(create_cq_in, *cqb, cq_context);
 MLX5_SET(cqc, cqc, log_page_size,
   cq->buf.buf.page_shift - MLX5_ADAPTER_PAGE_SHIFT);

 *index = dev->mdev->priv.uuari.uars[0].index;

 return 0;

err_buf:
 free_cq_buf(dev, &cq->buf);

err_db:
 mlx5_db_free(dev->mdev, &cq->db);
 return err;
}
