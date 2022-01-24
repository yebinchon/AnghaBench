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
struct mlx5_flow_table {int /*<<< orphan*/  shared_refcount; } ;
struct fs_prio {int /*<<< orphan*/  objs; } ;

/* Variables and functions */
 struct mlx5_flow_table* FUNC0 (struct fs_prio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC1(struct fs_prio *fs_prio)
{
	struct mlx5_flow_table *ft;

	ft = FUNC0(fs_prio, &fs_prio->objs);
	if (ft) {
		ft->shared_refcount++;
		return ft;
	}

	return NULL;
}