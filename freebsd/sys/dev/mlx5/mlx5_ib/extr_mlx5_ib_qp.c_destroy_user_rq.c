
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_ucontext {int dummy; } ;
struct mlx5_ib_rwq {scalar_t__ umem; int db; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_2__ {int context; } ;


 int ib_umem_release (scalar_t__) ;
 int mlx5_ib_db_unmap_user (struct mlx5_ib_ucontext*,int *) ;
 struct mlx5_ib_ucontext* to_mucontext (int ) ;

__attribute__((used)) static void destroy_user_rq(struct ib_pd *pd, struct mlx5_ib_rwq *rwq)
{
 struct mlx5_ib_ucontext *context;

 context = to_mucontext(pd->uobject->context);
 mlx5_ib_db_unmap_user(context, &rwq->db);
 if (rwq->umem)
  ib_umem_release(rwq->umem);
}
