#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int comm_toggle; } ;
struct TYPE_5__ {TYPE_1__* comm; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  slave_read; } ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC0(dev);
	u32 status = FUNC1(&priv->mfunc.comm->slave_read);

	return (FUNC2(status) >> 31) != priv->cmd.comm_toggle;
}