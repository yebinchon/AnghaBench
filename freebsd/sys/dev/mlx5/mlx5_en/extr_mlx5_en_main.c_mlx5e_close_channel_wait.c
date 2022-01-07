
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int rq; } ;


 int mlx5e_close_rq_wait (int *) ;
 int mlx5e_close_sqs_wait (struct mlx5e_channel*) ;
 int mlx5e_close_tx_cqs (struct mlx5e_channel*) ;

__attribute__((used)) static void
mlx5e_close_channel_wait(struct mlx5e_channel *c)
{
 mlx5e_close_rq_wait(&c->rq);
 mlx5e_close_sqs_wait(c);
 mlx5e_close_tx_cqs(c);
}
