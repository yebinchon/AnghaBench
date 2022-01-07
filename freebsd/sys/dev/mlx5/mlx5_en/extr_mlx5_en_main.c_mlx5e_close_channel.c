
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int rq; } ;


 int mlx5e_close_rq (int *) ;

__attribute__((used)) static void
mlx5e_close_channel(struct mlx5e_channel *c)
{
 mlx5e_close_rq(&c->rq);
}
