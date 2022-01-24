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
struct mlx5_core_dev {TYPE_1__* sniffer_tx_root_ns; } ;
struct fs_prio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FS_FT_SNIFFER_TX ; 
 scalar_t__ FUNC0 (struct fs_prio*) ; 
 int /*<<< orphan*/  MLX5_CORE_FS_SNIFFER_TX_ROOT_NS_NAME ; 
 int FUNC1 (struct fs_prio*) ; 
 TYPE_1__* FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fs_prio* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev)
{
	struct fs_prio *prio;

	dev->sniffer_tx_root_ns = FUNC2(dev, FS_FT_SNIFFER_TX,
						 MLX5_CORE_FS_SNIFFER_TX_ROOT_NS_NAME);
	if (!dev->sniffer_tx_root_ns)
		return  -ENOMEM;

	/* create 1 prio*/
	prio = FUNC3(&dev->sniffer_tx_root_ns->ns, 0, 1,
			      "sniffer_prio", 0);
	if (FUNC0(prio))
		return FUNC1(prio);
	else
		return 0;
}