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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_fpga_transaction {int /*<<< orphan*/  (* complete1 ) (struct mlx5_fpga_transaction const*,int /*<<< orphan*/ ) ;} ;
struct mlx5_fpga_trans_priv {struct mlx5_fpga_transaction* user_trans; int /*<<< orphan*/  status; int /*<<< orphan*/  state; int /*<<< orphan*/  tid; } ;
struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANS_STATE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_device*,struct mlx5_fpga_trans_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_transaction const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx5_fpga_device *fdev,
			   struct mlx5_fpga_trans_priv *trans_priv, u8 status)
{
	const struct mlx5_fpga_transaction *user_trans;
	unsigned long flags;

	FUNC1(fdev, "Transaction %u is complete with status %u\n",
		      trans_priv->tid, status);

	FUNC2(&fdev->trans->lock, flags);
	trans_priv->state = TRANS_STATE_COMPLETE;
	trans_priv->status = status;
	FUNC3(&fdev->trans->lock, flags);

	user_trans = trans_priv->user_trans;
	FUNC0(fdev, trans_priv);

	if (user_trans->complete1)
		user_trans->complete1(user_trans, status);
}