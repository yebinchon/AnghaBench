
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wrid; } ;
struct TYPE_10__ {int wr_data; int wrid; int w_list; int wqe_head; } ;
struct mlx5_ib_qp {TYPE_3__* bf; int buf; TYPE_1__ rq; TYPE_4__ sq; int db; } ;
struct mlx5_ib_dev {TYPE_5__* mdev; } ;
struct TYPE_8__ {int uuari; } ;
struct TYPE_11__ {TYPE_2__ priv; } ;
struct TYPE_9__ {int uuarn; } ;


 int free_uuar (int *,int ) ;
 int kfree (int ) ;
 int mlx5_buf_free (TYPE_5__*,int *) ;
 int mlx5_db_free (TYPE_5__*,int *) ;

__attribute__((used)) static void destroy_qp_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
 mlx5_db_free(dev->mdev, &qp->db);
 kfree(qp->sq.wqe_head);
 kfree(qp->sq.w_list);
 kfree(qp->sq.wrid);
 kfree(qp->sq.wr_data);
 kfree(qp->rq.wrid);
 mlx5_buf_free(dev->mdev, &qp->buf);
 free_uuar(&dev->mdev->priv.uuari, qp->bf->uuarn);
}
