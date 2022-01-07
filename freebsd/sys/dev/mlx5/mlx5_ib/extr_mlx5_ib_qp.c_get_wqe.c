
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_qp {int buf; } ;


 void* mlx5_buf_offset (int *,int) ;

__attribute__((used)) static void *get_wqe(struct mlx5_ib_qp *qp, int offset)
{
 return mlx5_buf_offset(&qp->buf, offset);
}
