#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_channels; } ;
struct mlx5e_priv {TYPE_2__* channel; TYPE_1__ params; } ;
struct mlx5e_channel_param {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MLX5EN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel_param*,int /*<<< orphan*/ ) ; 
 struct mlx5e_channel_param* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_channel_param*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct mlx5e_priv*,struct mlx5e_channel_param*,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct mlx5e_priv *priv)
{
	struct mlx5e_channel_param *cparam;
	int err;
	int i;
	int j;

	cparam = FUNC1(sizeof(*cparam), M_MLX5EN, M_WAITOK);

	FUNC2(priv, cparam);
	for (i = 0; i < priv->params.num_channels; i++) {
		err = FUNC5(priv, cparam, &priv->channel[i]);
		if (err)
			goto err_close_channels;
	}

	for (j = 0; j < priv->params.num_channels; j++) {
		err = FUNC6(&priv->channel[j].rq);
		if (err)
			goto err_close_channels;
	}
	FUNC0(cparam, M_MLX5EN);
	return (0);

err_close_channels:
	while (i--) {
		FUNC3(&priv->channel[i]);
		FUNC4(&priv->channel[i]);
	}
	FUNC0(cparam, M_MLX5EN);
	return (err);
}