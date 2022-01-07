
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d64; int d32; } ;
struct mlx5e_sq {scalar_t__ cev_counter; TYPE_1__ doorbell; int lock; } ;


 int atomic_thread_fence_rel () ;
 scalar_t__ likely (int) ;
 int mlx5e_send_nop (struct mlx5e_sq*,int) ;
 int mlx5e_sq_has_room_for (struct mlx5e_sq*,int) ;
 int mlx5e_tx_notify_hw (struct mlx5e_sq*,int ,int ) ;
 int msleep (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mlx5e_sq_send_nops_locked(struct mlx5e_sq *sq, int can_sleep)
{

 while (sq->cev_counter != 0) {
  while (!mlx5e_sq_has_room_for(sq, 1)) {
   if (can_sleep != 0) {
    mtx_unlock(&sq->lock);
    msleep(4);
    mtx_lock(&sq->lock);
   } else {
    goto done;
   }
  }

  mlx5e_send_nop(sq, 1);
  atomic_thread_fence_rel();
 }
done:

 if (likely(sq->doorbell.d64 != 0)) {
  mlx5e_tx_notify_hw(sq, sq->doorbell.d32, 0);
  sq->doorbell.d64 = 0;
 }
}
