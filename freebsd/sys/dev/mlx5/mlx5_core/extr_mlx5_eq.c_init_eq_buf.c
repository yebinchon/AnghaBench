
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eqe {int owner; } ;
struct mlx5_eq {int nent; } ;


 int MLX5_EQE_OWNER_INIT_VAL ;
 struct mlx5_eqe* get_eqe (struct mlx5_eq*,int) ;

__attribute__((used)) static void init_eq_buf(struct mlx5_eq *eq)
{
 struct mlx5_eqe *eqe;
 int i;

 for (i = 0; i < eq->nent; i++) {
  eqe = get_eqe(eq, i);
  eqe->owner = MLX5_EQE_OWNER_INIT_VAL;
 }
}
