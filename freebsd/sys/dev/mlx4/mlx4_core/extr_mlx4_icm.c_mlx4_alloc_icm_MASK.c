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
struct mlx4_icm_chunk {size_t npages; scalar_t__ nsg; int /*<<< orphan*/ * mem; int /*<<< orphan*/  list; } ;
struct mlx4_icm {int /*<<< orphan*/  chunk_list; scalar_t__ refcount; } ;
struct mlx4_dev {TYPE_1__* persist; int /*<<< orphan*/  numa_node; } ;
typedef  int gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX4_ICM_ALLOC_SIZE ; 
 size_t MLX4_ICM_CHUNK_LEN ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOWARN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,struct mlx4_icm*,int) ; 
 void* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 

struct mlx4_icm *FUNC11(struct mlx4_dev *dev, int npages,
				gfp_t gfp_mask, int coherent)
{
	struct mlx4_icm *icm;
	struct mlx4_icm_chunk *chunk = NULL;
	int cur_order;
	int ret;

	/* We use sg_set_buf for coherent allocs, which assumes low memory */
	FUNC0(coherent && (gfp_mask & __GFP_HIGHMEM));

	icm = FUNC4(sizeof(*icm),
			   gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN),
			   dev->numa_node);
	if (!icm) {
		icm = FUNC3(sizeof(*icm),
			      gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN));
		if (!icm)
			return NULL;
	}

	icm->refcount = 0;
	FUNC1(&icm->chunk_list);

	cur_order = FUNC2(MLX4_ICM_ALLOC_SIZE);

	while (npages > 0) {
		if (!chunk) {
			chunk = FUNC4(sizeof(*chunk),
					     gfp_mask & ~(__GFP_HIGHMEM |
							  __GFP_NOWARN),
					     dev->numa_node);
			if (!chunk) {
				chunk = FUNC3(sizeof(*chunk),
						gfp_mask & ~(__GFP_HIGHMEM |
							     __GFP_NOWARN));
				if (!chunk)
					goto fail;
			}

			FUNC10(chunk->mem, MLX4_ICM_CHUNK_LEN);
			chunk->npages = 0;
			chunk->nsg    = 0;
			FUNC5(&chunk->list, &icm->chunk_list);
		}

		while (1 << cur_order > npages)
			--cur_order;

		if (coherent)
			ret = FUNC6(&dev->persist->pdev->dev,
						      &chunk->mem[chunk->npages],
						      cur_order, gfp_mask);
		else
			ret = FUNC7(&chunk->mem[chunk->npages],
						   cur_order, gfp_mask,
						   dev->numa_node);

		if (ret) {
			if (--cur_order < 0)
				goto fail;
			else
				continue;
		}

		++chunk->npages;

		if (coherent)
			++chunk->nsg;
		else if (chunk->npages == MLX4_ICM_CHUNK_LEN) {
			chunk->nsg = FUNC9(dev->persist->pdev, chunk->mem,
						chunk->npages,
						PCI_DMA_BIDIRECTIONAL);

			if (chunk->nsg <= 0)
				goto fail;
		}

		if (chunk->npages == MLX4_ICM_CHUNK_LEN)
			chunk = NULL;

		npages -= 1 << cur_order;
	}

	if (!coherent && chunk) {
		chunk->nsg = FUNC9(dev->persist->pdev, chunk->mem,
					chunk->npages,
					PCI_DMA_BIDIRECTIONAL);

		if (chunk->nsg <= 0)
			goto fail;
	}

	return icm;

fail:
	FUNC8(dev, icm, coherent);
	return NULL;
}