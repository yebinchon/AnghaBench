
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct mlx4_en_cq {TYPE_1__* dev; int curr_poll_rx_cpu_id; } ;
struct TYPE_2__ {int if_softc; } ;


 scalar_t__ MLX4_EN_RX_BUDGET ;
 struct thread* curthread ;
 int mlx4_en_arm_cq (int ,struct mlx4_en_cq*) ;
 scalar_t__ mlx4_en_poll_rx_cq (struct mlx4_en_cq*,scalar_t__) ;
 int sched_bind (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void mlx4_en_rx_que(void *context, int pending)
{
        struct mlx4_en_cq *cq;
 struct thread *td;

        cq = context;
 td = curthread;

 thread_lock(td);
 sched_bind(td, cq->curr_poll_rx_cpu_id);
 thread_unlock(td);

        while (mlx4_en_poll_rx_cq(cq, MLX4_EN_RX_BUDGET)
                        == MLX4_EN_RX_BUDGET);
        mlx4_en_arm_cq(cq->dev->if_softc, cq);
}
