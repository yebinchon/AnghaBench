#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* pgdir; } ;
struct mlx5_db {TYPE_2__ u; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgdir_mutex; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  fw_page; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DB_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mlx5_core_dev *dev, struct mlx5_db *db)
{
	FUNC5(&dev->priv.pgdir_mutex);

	FUNC0(db->index, db->u.pgdir->bitmap);

	if (FUNC1(db->u.pgdir->bitmap, MLX5_DB_PER_PAGE)) {
		FUNC4(db->u.pgdir->fw_page);
		FUNC3(&db->u.pgdir->list);
		FUNC2(db->u.pgdir);
	}

	FUNC6(&dev->priv.pgdir_mutex);
}