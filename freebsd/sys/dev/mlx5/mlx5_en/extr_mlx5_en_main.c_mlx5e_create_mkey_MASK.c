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
typedef  int u32 ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct ifnet* ifp; } ;
struct mlx5_core_mr {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX5_ACCESS_MODE_PA ; 
 void* FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_mode ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  length64 ; 
 int /*<<< orphan*/  lr ; 
 int /*<<< orphan*/  lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC4 (struct mlx5_core_dev*,struct mlx5_core_mr*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*,...) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  qpn ; 

__attribute__((used)) static int
FUNC7(struct mlx5e_priv *priv, u32 pdn,
		  struct mlx5_core_mr *mkey)
{
	struct ifnet *ifp = priv->ifp;
	struct mlx5_core_dev *mdev = priv->mdev;
	int inlen = FUNC2(create_mkey_in);
	void *mkc;
	u32 *in;
	int err;

	in = FUNC6(inlen);
	if (in == NULL) {
		FUNC5(ifp, "failed to allocate inbox\n");
		return (-ENOMEM);
	}

	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);
	FUNC1(mkc, mkc, access_mode, MLX5_ACCESS_MODE_PA);
	FUNC1(mkc, mkc, lw, 1);
	FUNC1(mkc, mkc, lr, 1);

	FUNC1(mkc, mkc, pd, pdn);
	FUNC1(mkc, mkc, length64, 1);
	FUNC1(mkc, mkc, qpn, 0xffffff);

	err = FUNC4(mdev, mkey, in, inlen);
	if (err)
		FUNC5(ifp, "mlx5_core_create_mkey failed, %d\n",
		    err);

	FUNC3(in);
	return (err);
}