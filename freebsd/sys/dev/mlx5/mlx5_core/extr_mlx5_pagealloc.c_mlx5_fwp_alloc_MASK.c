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
struct mlx5_fw_page {unsigned int numpages; scalar_t__ load_done; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  virt_addr; struct mlx5_core_dev* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_sx; int /*<<< orphan*/  dma_tag; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  MLX5_ADAPTER_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 scalar_t__ MLX5_LOAD_ST_NONE ; 
 scalar_t__ MLX5_LOAD_ST_SUCCESS ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx5_fw_page*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fw_page*) ; 
 struct mlx5_fw_page* FUNC8 (int,int) ; 
 int /*<<< orphan*/  mlx5_fwp_load_mem_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct mlx5_fw_page *
FUNC11(struct mlx5_core_dev *dev, gfp_t flags, unsigned num)
{
	struct mlx5_fw_page *fwp;
	unsigned x;
	int err;

	/* check for special case */
	if (num == 0) {
		fwp = FUNC8(sizeof(*fwp), flags);
		if (fwp != NULL)
			fwp->dev = dev;
		return (fwp);
	}

	/* we need sleeping context for this function */
	if (flags & M_NOWAIT)
		return (NULL);

	fwp = FUNC8(sizeof(*fwp) * num, flags);

	/* serialize loading the DMA map(s) */
	FUNC9(&dev->cmd.dma_sx);

	for (x = 0; x != num; x++) {
		/* store pointer to MLX5 core device */
		fwp[x].dev = dev;
		/* store number of pages left from the array */
		fwp[x].numpages = num - x;

		/* allocate memory */
		err = FUNC5(dev->cmd.dma_tag, &fwp[x].virt_addr,
		    BUS_DMA_WAITOK | BUS_DMA_COHERENT, &fwp[x].dma_map);
		if (err != 0)
			goto failure;

		/* load memory into DMA */
		FUNC0(dev);
		(void) FUNC3(
		    dev->cmd.dma_tag, fwp[x].dma_map, fwp[x].virt_addr,
		    MLX5_ADAPTER_PAGE_SIZE, &mlx5_fwp_load_mem_cb,
		    fwp + x, BUS_DMA_WAITOK | BUS_DMA_COHERENT);

		while (fwp[x].load_done == MLX5_LOAD_ST_NONE)
			FUNC2(dev);
		FUNC1(dev);

		/* check for error */
		if (fwp[x].load_done != MLX5_LOAD_ST_SUCCESS) {
			FUNC6(dev->cmd.dma_tag, fwp[x].virt_addr,
			    fwp[x].dma_map);
			goto failure;
		}
	}
	FUNC10(&dev->cmd.dma_sx);
	return (fwp);

failure:
	while (x--) {
		FUNC4(dev->cmd.dma_tag, fwp[x].dma_map);
		FUNC6(dev->cmd.dma_tag, fwp[x].virt_addr, fwp[x].dma_map);
	}
	FUNC10(&dev->cmd.dma_sx);
	FUNC7(fwp);
	return (NULL);
}