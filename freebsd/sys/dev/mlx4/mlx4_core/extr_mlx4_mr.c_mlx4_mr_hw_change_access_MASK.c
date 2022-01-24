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
struct mlx4_mpt_entry {int /*<<< orphan*/  flags; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int MLX4_PERM_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct mlx4_dev *dev,
			     struct mlx4_mpt_entry *mpt_entry,
			     u32 access)
{
	u32 flags = (FUNC0(mpt_entry->flags) & ~MLX4_PERM_MASK) |
		    (access & MLX4_PERM_MASK);

	mpt_entry->flags = FUNC1(flags);
	return 0;
}