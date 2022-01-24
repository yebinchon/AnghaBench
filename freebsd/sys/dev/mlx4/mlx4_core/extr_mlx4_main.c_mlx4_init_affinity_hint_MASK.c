#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct mlx4_eq* eq; } ;
struct mlx4_priv {TYPE_1__ eq_table; } ;
struct mlx4_eq {int affinity_cpu_id; } ;
struct TYPE_4__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_2__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_EQ_ASYNC ; 
 scalar_t__ FUNC0 (struct mlx4_dev*,int) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev, int port, int eqn)
{
	int requested_cpu = 0;
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_eq *eq;
	int off = 0;
	int i;

	if (eqn > dev->caps.num_comp_vectors)
		return -EINVAL;

	for (i = 1; i < port; i++)
		off += FUNC0(dev, i);

	requested_cpu = eqn - off - !!(eqn > MLX4_EQ_ASYNC);

	/* Meaning EQs are shared, and this call comes from the second port */
	if (requested_cpu < 0)
		return 0;

	eq = &priv->eq_table.eq[eqn];

	eq->affinity_cpu_id = requested_cpu % FUNC2();

	return 0;
}