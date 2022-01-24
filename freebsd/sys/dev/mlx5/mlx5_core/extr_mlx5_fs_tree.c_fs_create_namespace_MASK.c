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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_namespace {TYPE_1__ base; } ;
struct fs_prio {int /*<<< orphan*/  objs; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_namespace* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_namespace*) ; 
 struct mlx5_flow_namespace* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_namespace *FUNC5(struct fs_prio *prio,
						       const char *name)
{
	struct mlx5_flow_namespace	*ns;

	ns = FUNC3(sizeof(*ns), GFP_KERNEL);
	if (!ns)
		return FUNC0(-ENOMEM);

	FUNC2(ns);
	FUNC1(&ns->base, &prio->base, name, 1);
	FUNC4(&ns->base.list, &prio->objs);

	return ns;
}