
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eqe {int owner; } ;
struct mlx5_eq {int cons_index; int nent; } ;


 struct mlx5_eqe* get_eqe (struct mlx5_eq*,int) ;

__attribute__((used)) static struct mlx5_eqe *next_eqe_sw(struct mlx5_eq *eq)
{
 struct mlx5_eqe *eqe = get_eqe(eq, eq->cons_index & (eq->nent - 1));

 return ((eqe->owner & 1) ^ !!(eq->cons_index & eq->nent)) ? ((void*)0) : eqe;
}
