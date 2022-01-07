
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_ucontext {int uuari; } ;
struct TYPE_4__ {scalar_t__ umem; } ;
struct mlx5_ib_qp_base {TYPE_2__ ubuffer; } ;
struct mlx5_ib_qp {int uuarn; int db; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_3__ {int context; } ;


 int free_uuar (int *,int ) ;
 int ib_umem_release (scalar_t__) ;
 int mlx5_ib_db_unmap_user (struct mlx5_ib_ucontext*,int *) ;
 struct mlx5_ib_ucontext* to_mucontext (int ) ;

__attribute__((used)) static void destroy_qp_user(struct ib_pd *pd, struct mlx5_ib_qp *qp,
       struct mlx5_ib_qp_base *base)
{
 struct mlx5_ib_ucontext *context;

 context = to_mucontext(pd->uobject->context);
 mlx5_ib_db_unmap_user(context, &qp->db);
 if (base->ubuffer.umem)
  ib_umem_release(base->ubuffer.umem);
 free_uuar(&context->uuari, qp->uuarn);
}
