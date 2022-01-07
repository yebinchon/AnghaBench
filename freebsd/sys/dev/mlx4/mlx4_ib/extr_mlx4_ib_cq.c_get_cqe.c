
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_cq {int buf; } ;


 void* get_cqe_from_buf (int *,int) ;

__attribute__((used)) static void *get_cqe(struct mlx4_ib_cq *cq, int n)
{
 return get_cqe_from_buf(&cq->buf, n);
}
