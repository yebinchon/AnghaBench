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
struct mlx5e_priv {int tdn; int /*<<< orphan*/ * tisn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_tis_in ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prio ; 
 int /*<<< orphan*/  transport_domain ; 

__attribute__((used)) static int
FUNC5(struct mlx5e_priv *priv, int tc)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	u32 in[FUNC2(create_tis_in)];
	void *tisc = FUNC0(create_tis_in, in, ctx);

	FUNC3(in, 0, sizeof(in));

	FUNC1(tisc, tisc, prio, tc);
	FUNC1(tisc, tisc, transport_domain, priv->tdn);

	return (FUNC4(mdev, in, sizeof(in), &priv->tisn[tc]));
}