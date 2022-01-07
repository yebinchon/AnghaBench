
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_cq_buf {int entry_size; int buf; } ;


 void* mlx4_buf_offset (int *,int) ;

__attribute__((used)) static void *get_cqe_from_buf(struct mlx4_ib_cq_buf *buf, int n)
{
 return mlx4_buf_offset(&buf->buf, n * buf->entry_size);
}
