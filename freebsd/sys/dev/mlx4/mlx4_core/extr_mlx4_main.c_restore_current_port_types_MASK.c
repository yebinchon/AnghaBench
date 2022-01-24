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
struct mlx4_priv {int /*<<< orphan*/  port_mutex; } ;
struct TYPE_2__ {int num_ports; int* possible_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef  enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*,int*) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev,
				      enum mlx4_port_type *types,
				      enum mlx4_port_type *poss_types)
{
	struct mlx4_priv *priv = FUNC1(dev);
	int err, i;

	FUNC3(dev);

	FUNC4(&priv->port_mutex);
	for (i = 0; i < dev->caps.num_ports; i++)
		dev->caps.possible_type[i + 1] = poss_types[i];
	err = FUNC0(dev, types);
	FUNC5(&priv->port_mutex);

	FUNC2(dev);

	return err;
}