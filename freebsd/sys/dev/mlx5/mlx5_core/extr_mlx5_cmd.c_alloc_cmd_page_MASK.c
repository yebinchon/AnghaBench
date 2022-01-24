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
struct mlx5_core_dev {TYPE_2__* pdev; } ;
struct mlx5_cmd {int /*<<< orphan*/  dma_sx; int /*<<< orphan*/  dma_mtx; int /*<<< orphan*/  dma_cv; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/ * cmd_page; int /*<<< orphan*/  cmd_buf; int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_ADAPTER_PAGE_SIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC12(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{
	int err;

	FUNC11(&cmd->dma_sx, "MLX5-DMA-SX");
	FUNC9(&cmd->dma_mtx, "MLX5-DMA-MTX", NULL, MTX_DEF);
	FUNC4(&cmd->dma_cv, "MLX5-DMA-CV");

	/*
	 * Create global DMA descriptor tag for allocating
	 * 4K firmware pages:
	 */
	err = -FUNC0(
	    FUNC2(dev->pdev->dev.bsddev),
	    MLX5_ADAPTER_PAGE_SIZE,	/* alignment */
	    0,				/* no boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MLX5_ADAPTER_PAGE_SIZE,	/* maxsize */
	    1,				/* nsegments */
	    MLX5_ADAPTER_PAGE_SIZE,	/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockfuncarg */
	    &cmd->dma_tag);
	if (err != 0)
		goto failure_destroy_sx;

	cmd->cmd_page = FUNC5(dev, GFP_KERNEL, 1);
	if (cmd->cmd_page == NULL) {
		err = -ENOMEM;
		goto failure_alloc_page;
	}
	cmd->dma = FUNC6(cmd->cmd_page, 0);
	cmd->cmd_buf = FUNC7(cmd->cmd_page, 0);
	return (0);

failure_alloc_page:
	FUNC1(cmd->dma_tag);

failure_destroy_sx:
	FUNC3(&cmd->dma_cv);
	FUNC8(&cmd->dma_mtx);
	FUNC10(&cmd->dma_sx);
	return (err);
}