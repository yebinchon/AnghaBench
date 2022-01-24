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
struct TYPE_2__ {scalar_t__ d64; int /*<<< orphan*/  d32; } ;
struct mlx5e_sq {scalar_t__ cev_next_state; int cev_factor; TYPE_1__ doorbell; int /*<<< orphan*/  running; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENOBUFS ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ MLX5E_CEV_STATE_HOLD_NOPS ; 
 scalar_t__ MLX5E_CEV_STATE_INITIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_sq*) ; 
 scalar_t__ FUNC4 (struct mlx5e_sq*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_sq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, struct mlx5e_sq *sq, struct mbuf *mb)
{
	int err = 0;

	if (FUNC6((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    FUNC0(sq->running) == 0)) {
		FUNC2(mb);
		return (ENETDOWN);
	}

	/* Do transmit */
	if (FUNC4(sq, &mb) != 0) {
		/* NOTE: m_freem() is NULL safe */
		FUNC2(mb);
		err = ENOBUFS;
	}

	/* Check if we need to write the doorbell */
	if (FUNC1(sq->doorbell.d64 != 0)) {
		FUNC5(sq, sq->doorbell.d32, 0);
		sq->doorbell.d64 = 0;
	}

	/*
	 * Check if we need to start the event timer which flushes the
	 * transmit ring on timeout:
	 */
	if (FUNC6(sq->cev_next_state == MLX5E_CEV_STATE_INITIAL &&
	    sq->cev_factor != 1)) {
		/* start the timer */
		FUNC3(sq);
	} else {
		/* don't send NOPs yet */
		sq->cev_next_state = MLX5E_CEV_STATE_HOLD_NOPS;
	}
	return (err);
}