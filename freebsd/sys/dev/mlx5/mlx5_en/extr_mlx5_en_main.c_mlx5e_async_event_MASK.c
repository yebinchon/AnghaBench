#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5e_priv {int /*<<< orphan*/  async_events_mtx; int /*<<< orphan*/  state; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_ASYNC_EVENTS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlx5_core_dev *mdev, void *vpriv,
    enum mlx5_dev_event event, unsigned long param)
{
	struct mlx5e_priv *priv = vpriv;

	FUNC1(&priv->async_events_mtx);
	if (FUNC3(MLX5E_STATE_ASYNC_EVENTS_ENABLE, &priv->state))
		FUNC0(priv, event);
	FUNC2(&priv->async_events_mtx);
}