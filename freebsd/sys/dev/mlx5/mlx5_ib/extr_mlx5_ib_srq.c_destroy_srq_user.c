
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_srq {int umem; int db; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_2__ {int context; } ;


 int ib_umem_release (int ) ;
 int mlx5_ib_db_unmap_user (int ,int *) ;
 int to_mucontext (int ) ;

__attribute__((used)) static void destroy_srq_user(struct ib_pd *pd, struct mlx5_ib_srq *srq)
{
 mlx5_ib_db_unmap_user(to_mucontext(pd->uobject->context), &srq->db);
 ib_umem_release(srq->umem);
}
