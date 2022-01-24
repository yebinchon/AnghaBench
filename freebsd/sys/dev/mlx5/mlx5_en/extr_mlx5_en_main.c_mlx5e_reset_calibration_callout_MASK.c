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
struct mlx5e_priv {scalar_t__ clbr_done; int /*<<< orphan*/  tstmp_clbr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (struct mlx5e_priv*),struct mlx5e_priv*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 scalar_t__ mlx5e_calibration_duration ; 
 int mlx5e_fast_calibration ; 
 int mlx5e_normal_calibration ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_priv *priv)
{

	if (priv->clbr_done == 0)
		FUNC1(priv);
	else
		FUNC0(&priv->tstmp_clbr, (priv->clbr_done <
		    mlx5e_calibration_duration ? mlx5e_fast_calibration :
		    mlx5e_normal_calibration) * hz, mlx5e_calibration_callout,
		    priv);
}