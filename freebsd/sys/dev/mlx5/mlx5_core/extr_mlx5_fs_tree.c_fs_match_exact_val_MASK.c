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
struct mlx5_core_fs_mask {int match_criteria_enable; void* match_criteria; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  inner_headers ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  outer_headers ; 

bool FUNC3(struct mlx5_core_fs_mask *mask,
			       void *val1, void *val2)
{
	if (mask->match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS) {
		void *fte_match1 = FUNC0(fte_match_param,
						val1, outer_headers);
		void *fte_match2 = FUNC0(fte_match_param,
						val2, outer_headers);
		void *fte_mask = FUNC0(fte_match_param,
					      mask->match_criteria, outer_headers);

		if (!FUNC2(fte_mask, fte_match1, fte_match2,
					 FUNC1(fte_match_set_lyr_2_4)))
			return false;
	}

	if (mask->match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS) {
		void *fte_match1 = FUNC0(fte_match_param,
						val1, misc_parameters);
		void *fte_match2 = FUNC0(fte_match_param,
						val2, misc_parameters);
		void *fte_mask = FUNC0(fte_match_param,
					  mask->match_criteria, misc_parameters);

		if (!FUNC2(fte_mask, fte_match1, fte_match2,
					 FUNC1(fte_match_set_misc)))
			return false;
	}
	if (mask->match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS) {
		void *fte_match1 = FUNC0(fte_match_param,
						val1, inner_headers);
		void *fte_match2 = FUNC0(fte_match_param,
						val2, inner_headers);
		void *fte_mask = FUNC0(fte_match_param,
					  mask->match_criteria, inner_headers);

		if (!FUNC2(fte_mask, fte_match1, fte_match2,
					 FUNC1(fte_match_set_lyr_2_4)))
			return false;
	}
	return true;
}