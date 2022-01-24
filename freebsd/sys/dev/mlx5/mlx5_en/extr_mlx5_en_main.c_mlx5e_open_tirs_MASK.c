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
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 int MLX5E_NUM_TT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*,int) ; 
 int FUNC1 (struct mlx5e_priv*,int) ; 

__attribute__((used)) static int
FUNC2(struct mlx5e_priv *priv)
{
	int err;
	int i;

	for (i = 0; i < MLX5E_NUM_TT; i++) {
		err = FUNC1(priv, i);
		if (err)
			goto err_close_tirs;
	}

	return (0);

err_close_tirs:
	for (i--; i >= 0; i--)
		FUNC0(priv, i);

	return (err);
}