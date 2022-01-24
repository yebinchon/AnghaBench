#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  match_criteria; void* match_criteria_enable; } ;
struct mlx5_flow_group {void* start_index; void* max_ftes; TYPE_2__ base; TYPE_1__ mask; int /*<<< orphan*/  ftes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_GROUP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 struct mlx5_flow_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* match_criteria ; 
 void* match_criteria_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static struct mlx5_flow_group *FUNC6(u32 *create_fg_in)
{
	struct mlx5_flow_group *fg;
	void *match_criteria = FUNC2(create_flow_group_in,
					    create_fg_in, match_criteria);
	u8 match_criteria_enable = FUNC3(create_flow_group_in,
					    create_fg_in,
					    match_criteria_enable);
	fg = FUNC4(sizeof(*fg), GFP_KERNEL);
	if (!fg)
		return FUNC0(-ENOMEM);

	FUNC1(&fg->ftes);
	fg->mask.match_criteria_enable = match_criteria_enable;
	FUNC5(&fg->mask.match_criteria, match_criteria,
	       sizeof(fg->mask.match_criteria));
	fg->base.type =  FS_TYPE_FLOW_GROUP;
	fg->start_index = FUNC3(create_flow_group_in, create_fg_in,
				   start_flow_index);
	fg->max_ftes = FUNC3(create_flow_group_in, create_fg_in,
				end_flow_index) - fg->start_index + 1;
	return fg;
}