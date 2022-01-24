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
struct mlx5_cmd {int /*<<< orphan*/  alloc_lock; int /*<<< orphan*/  bitmask; int /*<<< orphan*/ * ent_mode; int /*<<< orphan*/ ** ent_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_MODE_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct mlx5_cmd *cmd, int idx)
{
	unsigned long flags;

	FUNC1(&cmd->alloc_lock, flags);
	cmd->ent_arr[idx] = NULL;	/* safety clear */
	cmd->ent_mode[idx] = MLX5_CMD_MODE_POLLING;	/* reset mode */
	FUNC0(idx, &cmd->bitmask);
	FUNC2(&cmd->alloc_lock, flags);
}