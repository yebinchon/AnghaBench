
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mtx; int watchdog; } ;
struct mlx5e_channel {TYPE_1__* sq; TYPE_2__ rq; } ;
struct TYPE_3__ {int comp_lock; int lock; int cev_callout; } ;


 int MLX5E_MAX_TX_NUM_TC ;
 int callout_drain (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
mlx5e_chan_static_destroy(struct mlx5e_channel *c)
{
 int tc;

 callout_drain(&c->rq.watchdog);

 mtx_destroy(&c->rq.mtx);

 for (tc = 0; tc != MLX5E_MAX_TX_NUM_TC; tc++) {
  callout_drain(&c->sq[tc].cev_callout);
  mtx_destroy(&c->sq[tc].lock);
  mtx_destroy(&c->sq[tc].comp_lock);
 }
}
