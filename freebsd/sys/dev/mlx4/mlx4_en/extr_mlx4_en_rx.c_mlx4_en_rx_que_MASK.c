#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct mlx4_en_cq {TYPE_1__* dev; int /*<<< orphan*/  curr_poll_rx_cpu_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_softc; } ;

/* Variables and functions */
 scalar_t__ MLX4_EN_RX_BUDGET ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_cq*) ; 
 scalar_t__ FUNC1 (struct mlx4_en_cq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void FUNC5(void *context, int pending)
{
        struct mlx4_en_cq *cq;
	struct thread *td;

        cq = context;
	td = curthread;

	FUNC3(td);
	FUNC2(td, cq->curr_poll_rx_cpu_id);
	FUNC4(td);

        while (FUNC1(cq, MLX4_EN_RX_BUDGET)
                        == MLX4_EN_RX_BUDGET);
        FUNC0(cq->dev->if_softc, cq);
}