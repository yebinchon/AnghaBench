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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct fs_prio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct mlx5_flow_table* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx5_flow_table* FUNC1 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,struct fs_prio*,int,char const*) ; 
 struct fs_prio* FUNC2 (struct mlx5_flow_namespace*,unsigned int) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC3(struct mlx5_flow_namespace *ns,
						u16 vport,
						unsigned int prio,
						int max_fte,
						const char *name)
{
	struct fs_prio *fs_prio = NULL;
	fs_prio = FUNC2(ns, prio);
	if (!fs_prio)
		return FUNC0(-EINVAL);

	return FUNC1(ns, vport, fs_prio, max_fte, name);
}