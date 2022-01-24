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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_flow_namespace {int /*<<< orphan*/  prios; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;
struct fs_prio {int max_ft; unsigned int prio; int /*<<< orphan*/  shared_lock; int /*<<< orphan*/  objs; TYPE_1__ base; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fs_prio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_TYPE_PRIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_CORE_FS_PRIO_MAX_NS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int) ; 
 struct fs_prio* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fs_prio *FUNC6(struct mlx5_flow_namespace *ns,
				      unsigned prio, int max_ft,
				      const char *name, u8 flags)
{
	struct fs_prio *fs_prio;

	fs_prio = FUNC3(sizeof(*fs_prio), GFP_KERNEL);
	if (!fs_prio)
		return FUNC0(-ENOMEM);

	fs_prio->base.type = FS_TYPE_PRIO;
	FUNC2(&fs_prio->base, &ns->base, name, 1);
	fs_prio->max_ft = max_ft;
	fs_prio->max_ns = MLX5_CORE_FS_PRIO_MAX_NS;
	fs_prio->prio = prio;
	fs_prio->flags = flags;
	FUNC4(&fs_prio->base.list, &ns->prios);
	FUNC1(&fs_prio->objs);
	FUNC5(&fs_prio->shared_lock);

	return fs_prio;
}