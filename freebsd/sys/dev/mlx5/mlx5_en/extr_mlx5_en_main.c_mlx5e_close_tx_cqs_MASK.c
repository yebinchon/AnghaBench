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
struct mlx5e_channel {TYPE_2__* sq; TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq; } ;
struct TYPE_3__ {int num_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct mlx5e_channel *c)
{
	int tc;

	for (tc = 0; tc < c->priv->num_tc; tc++)
		FUNC0(&c->sq[tc].cq);
}