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
struct mlx5_uuar_info {int num_uars; struct mlx5_bf* uars; struct mlx5_bf* bfs; struct mlx5_bf* bitmap; struct mlx5_bf* count; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_low_latency_uuars; } ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;
struct mlx5_bf {int buf_size; int uuarn; scalar_t__ index; int /*<<< orphan*/  map; int /*<<< orphan*/  lock32; int /*<<< orphan*/  lock; int /*<<< orphan*/  need_lock; scalar_t__ offset; int /*<<< orphan*/ * reg; int /*<<< orphan*/  regreg; struct mlx5_bf* uar; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLX5_BF_OFFSET ; 
 int MLX5_BF_REGS_PER_PAGE ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int NUM_DRIVER_UARS ; 
 int /*<<< orphan*/  NUM_LOW_LAT_UUARS ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_bf*) ; 
 int /*<<< orphan*/  log_bf_reg_size ; 
 int FUNC6 (struct mlx5_core_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct mlx5_core_dev *dev, struct mlx5_uuar_info *uuari)
{
	int tot_uuars = NUM_DRIVER_UARS * MLX5_BF_REGS_PER_PAGE;
	struct mlx5_bf *bf;
	phys_addr_t addr;
	int err;
	int i;

	uuari->num_uars = NUM_DRIVER_UARS;
	uuari->num_low_latency_uuars = NUM_LOW_LAT_UUARS;

	FUNC9(&uuari->lock);
	uuari->uars = FUNC4(uuari->num_uars, sizeof(*uuari->uars), GFP_KERNEL);

	uuari->bfs = FUNC4(tot_uuars, sizeof(*uuari->bfs), GFP_KERNEL);

	uuari->bitmap = FUNC4(FUNC0(tot_uuars), sizeof(*uuari->bitmap),
				GFP_KERNEL);

	uuari->count = FUNC4(tot_uuars, sizeof(*uuari->count), GFP_KERNEL);

	for (i = 0; i < uuari->num_uars; i++) {
		err = FUNC6(dev, &uuari->uars[i].index);
		if (err)
			goto out_count;

		addr = FUNC11(dev->pdev, 0) +
		       ((phys_addr_t)(uuari->uars[i].index) << PAGE_SHIFT);
		uuari->uars[i].map = FUNC2(addr, PAGE_SIZE);
		if (!uuari->uars[i].map) {
			FUNC7(dev, uuari->uars[i].index);
			err = -ENOMEM;
			goto out_count;
		}
		FUNC8(dev, "allocated uar index 0x%x, mmaped at %p\n",
			      uuari->uars[i].index, uuari->uars[i].map);
	}

	for (i = 0; i < tot_uuars; i++) {
		bf = &uuari->bfs[i];

		bf->buf_size = (1 << FUNC1(dev, log_bf_reg_size)) / 2;
		bf->uar = &uuari->uars[i / MLX5_BF_REGS_PER_PAGE];
		bf->regreg = uuari->uars[i / MLX5_BF_REGS_PER_PAGE].map;
		bf->reg = NULL; /* Add WC support */
		bf->offset = (i % MLX5_BF_REGS_PER_PAGE) *
			     (1 << FUNC1(dev, log_bf_reg_size)) +
			     MLX5_BF_OFFSET;
		bf->need_lock = FUNC10(i);
		FUNC12(&bf->lock);
		FUNC12(&bf->lock32);
		bf->uuarn = i;
	}

	return 0;

out_count:
	for (i--; i >= 0; i--) {
		FUNC3(uuari->uars[i].map);
		FUNC7(dev, uuari->uars[i].index);
	}
	FUNC5(uuari->count);

	FUNC5(uuari->bitmap);

	FUNC5(uuari->bfs);

	FUNC5(uuari->uars);
	return err;
}