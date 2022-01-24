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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_group {int dummy; } ;
struct list_head {int dummy; } ;
struct fs_fte {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs_fte*) ; 
 struct fs_fte* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct mlx5_flow_group*,struct list_head**) ; 

__attribute__((used)) static struct fs_fte *FUNC3(struct mlx5_flow_group *fg,
			     u32 *match_value,
			     u8 action,
			     u32 flow_tag,
			     struct list_head **prev)
{
	struct fs_fte *fte;
	int index = 0;

	index = FUNC2(fg, prev);
	fte = FUNC1(action, flow_tag, match_value, index);
	if (FUNC0(fte))
		return fte;

	return fte;
}