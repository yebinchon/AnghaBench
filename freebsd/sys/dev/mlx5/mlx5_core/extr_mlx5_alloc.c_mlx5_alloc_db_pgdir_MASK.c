#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_db_pgdir {int /*<<< orphan*/  db_page; TYPE_1__* fw_page; int /*<<< orphan*/  db_dma; int /*<<< orphan*/  bitmap; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_ADAPTER_PAGE_SIZE ; 
 int /*<<< orphan*/  MLX5_DB_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_db_pgdir*) ; 
 struct mlx5_db_pgdir* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static struct mlx5_db_pgdir *FUNC6(struct mlx5_core_dev *dev,
						 int node)
{
	struct mlx5_db_pgdir *pgdir;

	pgdir = FUNC2(sizeof(*pgdir), GFP_KERNEL);

	FUNC0(pgdir->bitmap, MLX5_DB_PER_PAGE);

	pgdir->fw_page = FUNC4(dev, GFP_KERNEL, 1);
	if (pgdir->fw_page != NULL) {
		pgdir->db_page = pgdir->fw_page->virt_addr;
		pgdir->db_dma = pgdir->fw_page->dma_addr;

		/* clean allocated memory */
		FUNC3(pgdir->db_page, 0, MLX5_ADAPTER_PAGE_SIZE);

		/* flush memory to RAM */
		FUNC5(pgdir->fw_page);
	}
	if (!pgdir->db_page) {
		FUNC1(pgdir);
		return NULL;
	}

	return pgdir;
}