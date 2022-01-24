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
struct mlx4_sense {int gone; int /*<<< orphan*/  sense_poll; } ;
struct mlx4_priv {struct mlx4_sense sense; int /*<<< orphan*/  port_mutex; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_sense *sense = &priv->sense;

	FUNC2(&priv->port_mutex);
	sense->gone = 1;
	FUNC3(&priv->port_mutex);

	FUNC0(&FUNC1(dev)->sense.sense_poll);
}