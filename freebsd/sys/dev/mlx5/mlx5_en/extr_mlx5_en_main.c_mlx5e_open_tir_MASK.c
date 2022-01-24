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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_priv {int /*<<< orphan*/ * tirn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_tir_in ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,void*,int) ; 
 int /*<<< orphan*/  tir_context ; 

__attribute__((used)) static int
FUNC6(struct mlx5e_priv *priv, int tt)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	u32 *in;
	void *tirc;
	int inlen;
	int err;

	inlen = FUNC1(create_tir_in);
	in = FUNC4(inlen);
	if (in == NULL)
		return (-ENOMEM);
	tirc = FUNC0(create_tir_in, in, tir_context);

	FUNC5(priv, tirc, tt);

	err = FUNC3(mdev, in, inlen, &priv->tirn[tt]);

	FUNC2(in);

	return (err);
}