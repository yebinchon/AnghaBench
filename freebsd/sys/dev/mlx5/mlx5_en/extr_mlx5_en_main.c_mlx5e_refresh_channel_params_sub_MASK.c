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
struct mlx5e_priv {int num_tc; } ;
struct mlx5e_channel {int /*<<< orphan*/ * sq; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct mlx5e_priv *priv, struct mlx5e_channel *c)
{
	int err;
	int i;

	err = FUNC0(priv, &c->rq);
	if (err)
		goto done;

	for (i = 0; i != priv->num_tc; i++) {
		err = FUNC1(priv, &c->sq[i]);
		if (err)
			goto done;
	}
done:
	return (err);
}