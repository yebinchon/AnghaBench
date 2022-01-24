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
struct mlx4_priv {int* def_counter; } ;
struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC2(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);
	int port;

	for (port = 0; port < dev->caps.num_ports; port++)
		if (priv->def_counter[port] != -1)
			FUNC0(dev,  priv->def_counter[port]);
}