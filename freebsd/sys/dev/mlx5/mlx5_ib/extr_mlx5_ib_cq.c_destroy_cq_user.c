
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int umem; } ;
struct mlx5_ib_cq {TYPE_1__ buf; int db; } ;
struct ib_ucontext {int dummy; } ;


 int ib_umem_release (int ) ;
 int mlx5_ib_db_unmap_user (int ,int *) ;
 int to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static void destroy_cq_user(struct mlx5_ib_cq *cq, struct ib_ucontext *context)
{
 mlx5_ib_db_unmap_user(to_mucontext(context), &cq->db);
 ib_umem_release(cq->buf.umem);
}
