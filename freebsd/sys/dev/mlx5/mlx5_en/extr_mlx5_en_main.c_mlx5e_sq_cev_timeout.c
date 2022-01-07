
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq {int cev_next_state; int cev_callout; int cev_counter; int lock; } ;


 int MA_OWNED ;
 int MLX5E_CEV_STATE_INITIAL ;

 int callout_reset_curcpu (int *,int ,void (*) (void*),struct mlx5e_sq*) ;
 int hz ;
 int mlx5e_sq_send_nops_locked (struct mlx5e_sq*,int ) ;
 int mtx_assert (int *,int ) ;

void
mlx5e_sq_cev_timeout(void *arg)
{
 struct mlx5e_sq *sq = arg;

 mtx_assert(&sq->lock, MA_OWNED);


 switch (sq->cev_next_state) {
 case 128:

  mlx5e_sq_send_nops_locked(sq, 0);


  if (sq->cev_counter == 0) {
   sq->cev_next_state = MLX5E_CEV_STATE_INITIAL;
   return;
  }
  break;
 default:

  sq->cev_next_state = 128;
  break;
 }


 callout_reset_curcpu(&sq->cev_callout, hz, mlx5e_sq_cev_timeout, sq);
}
