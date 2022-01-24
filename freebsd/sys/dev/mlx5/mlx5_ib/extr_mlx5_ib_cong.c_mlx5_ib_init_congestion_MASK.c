#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwork; int /*<<< orphan*/ * arg; struct sysctl_ctx_list ctx; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {struct sysctl_oid* oidp; } ;
struct TYPE_6__ {TYPE_1__ kobj; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct mlx5_ib_dev {TYPE_4__ congestion; TYPE_3__ ib_dev; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_U64 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_IB_CONG_PARAMS_NUM ; 
 int MLX5_IB_CONG_STATS_NUM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mlx5_ib_dev*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  cc_query_allowed ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/ * mlx5_ib_cong_params_desc ; 
 int /*<<< orphan*/  mlx5_ib_cong_params_handler ; 
 int /*<<< orphan*/ * mlx5_ib_cong_stats_desc ; 
 int FUNC6 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  mlx5_ib_read_cong_stats ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sysctl_ctx_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct sysctl_ctx_list*) ; 

int
FUNC11(struct mlx5_ib_dev *dev)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *parent;
	struct sysctl_oid *node;
	int err;
	u32 x;

	ctx = &dev->congestion.ctx;
	FUNC10(ctx);
	FUNC8(&dev->congestion.lock, "mlx5ibcong");
	FUNC0(&dev->congestion.dwork, mlx5_ib_read_cong_stats);

	if (!FUNC1(dev->mdev, cc_query_allowed))
		return (0);

	err = FUNC6(dev);
	if (err)
		return (err);

	parent = FUNC2(ctx, FUNC5(dev->ib_dev.dev.kobj.oidp),
	    OID_AUTO, "cong", CTLFLAG_RW, NULL, "Congestion control");
	if (parent == NULL)
		return (-ENOMEM);

	node = FUNC2(ctx, FUNC5(parent),
	    OID_AUTO, "conf", CTLFLAG_RW, NULL, "Configuration");
	if (node == NULL) {
		FUNC9(&dev->congestion.ctx);
		return (-ENOMEM);
	}

	for (x = 0; x != MLX5_IB_CONG_PARAMS_NUM; x++) {
		FUNC3(ctx,
		    FUNC5(node), OID_AUTO,
		    mlx5_ib_cong_params_desc[2 * x],
		    CTLTYPE_U64 | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
		    dev, x, &mlx5_ib_cong_params_handler, "QU",
		    mlx5_ib_cong_params_desc[2 * x + 1]);
	}

	node = FUNC2(ctx, FUNC5(parent),
	    OID_AUTO, "stats", CTLFLAG_RD, NULL, "Statistics");
	if (node == NULL) {
		FUNC9(&dev->congestion.ctx);
		return (-ENOMEM);
	}

	for (x = 0; x != MLX5_IB_CONG_STATS_NUM; x++) {
		/* read-only SYSCTLs */
		FUNC4(ctx, FUNC5(node), OID_AUTO,
		    mlx5_ib_cong_stats_desc[2 * x],
		    CTLFLAG_RD | CTLFLAG_MPSAFE,
		    &dev->congestion.arg[x + MLX5_IB_CONG_PARAMS_NUM],
		    0, mlx5_ib_cong_stats_desc[2 * x + 1]);
	}
	FUNC7(&dev->congestion.dwork, hz);
	return (0);
}