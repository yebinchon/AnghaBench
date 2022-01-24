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
struct mlx5e_channel_param {int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  rx_cq; int /*<<< orphan*/  sq; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct mlx5e_priv *priv,
    struct mlx5e_channel_param *cparam)
{
	FUNC0(cparam, 0, sizeof(*cparam));

	FUNC1(priv, &cparam->rq);
	FUNC3(priv, &cparam->sq);
	FUNC2(priv, &cparam->rx_cq);
	FUNC4(priv, &cparam->tx_cq);
}