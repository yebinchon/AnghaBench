
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d64; int d32; } ;
struct mlx5e_sq {scalar_t__ cev_next_state; int cev_factor; TYPE_1__ doorbell; int running; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;


 int ENETDOWN ;
 int ENOBUFS ;
 int IFF_DRV_RUNNING ;
 scalar_t__ MLX5E_CEV_STATE_HOLD_NOPS ;
 scalar_t__ MLX5E_CEV_STATE_INITIAL ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ likely (int) ;
 int m_freem (struct mbuf*) ;
 int mlx5e_sq_cev_timeout (struct mlx5e_sq*) ;
 scalar_t__ mlx5e_sq_xmit (struct mlx5e_sq*,struct mbuf**) ;
 int mlx5e_tx_notify_hw (struct mlx5e_sq*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mlx5e_xmit_locked(struct ifnet *ifp, struct mlx5e_sq *sq, struct mbuf *mb)
{
 int err = 0;

 if (unlikely((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
     READ_ONCE(sq->running) == 0)) {
  m_freem(mb);
  return (ENETDOWN);
 }


 if (mlx5e_sq_xmit(sq, &mb) != 0) {

  m_freem(mb);
  err = ENOBUFS;
 }


 if (likely(sq->doorbell.d64 != 0)) {
  mlx5e_tx_notify_hw(sq, sq->doorbell.d32, 0);
  sq->doorbell.d64 = 0;
 }





 if (unlikely(sq->cev_next_state == MLX5E_CEV_STATE_INITIAL &&
     sq->cev_factor != 1)) {

  mlx5e_sq_cev_timeout(sq);
 } else {

  sq->cev_next_state = MLX5E_CEV_STATE_HOLD_NOPS;
 }
 return (err);
}
