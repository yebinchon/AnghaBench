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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct mlx5_flow_group* fte; struct mlx5_flow_group* fg; } ;
struct mlx5_flow_table {int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  vport; int /*<<< orphan*/  base; TYPE_1__ star_rule; int /*<<< orphan*/  max_fte; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  fs_chain_lock; int /*<<< orphan*/  dev; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; } ;
struct fs_prio {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_flow_group*) ; 
 struct mlx5_flow_group* FUNC4 (struct mlx5_flow_table*,struct mlx5_flow_group*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct fs_prio*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 struct mlx5_flow_table* FUNC6 (struct fs_prio*) ; 
 struct mlx5_flow_table* FUNC7 (struct mlx5_flow_table*,struct fs_prio*) ; 
 struct mlx5_flow_root_namespace* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_group*) ; 
 struct mlx5_flow_group* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct fs_prio*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int FUNC23(struct mlx5_flow_table *ft, struct fs_prio *prio)
{
	struct mlx5_flow_group *fg;
	int err;
	u32 *fg_in;
	u32 *match_value;
	struct mlx5_flow_table *next_ft;
	struct mlx5_flow_table *prev_ft;
	struct mlx5_flow_root_namespace *root = FUNC8(&prio->base);
	int fg_inlen = FUNC2(create_flow_group_in);
	int match_len = FUNC2(fte_match_param);

	fg_in = FUNC20(fg_inlen);
	if (!fg_in) {
		FUNC19(root->dev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	match_value = FUNC20(match_len);
	if (!match_value) {
		FUNC19(root->dev, "failed to allocate inbox\n");
		FUNC16(fg_in);
		return -ENOMEM;
	}

	FUNC1(create_flow_group_in, fg_in, start_flow_index, ft->max_fte);
	FUNC1(create_flow_group_in, fg_in, end_flow_index, ft->max_fte);
	fg = FUNC10(fg_in);
	if (FUNC0(fg)) {
		err = FUNC3(fg);
		goto out;
	}
	ft->star_rule.fg = fg;
	err =  FUNC17(FUNC11(&prio->base),
				     fg_in, ft->vport, ft->type,
				     ft->id,
				     &fg->id);
	if (err)
		goto free_fg;

	ft->star_rule.fte = FUNC4(ft, fg,
						      match_value,
						      ft->max_fte);
	if (FUNC0(ft->star_rule.fte))
		goto free_star_rule;

	FUNC21(&root->fs_chain_lock);
	next_ft = FUNC6(prio);
	err = FUNC14(root->dev, ft, next_ft);
	if (err) {
		FUNC22(&root->fs_chain_lock);
		goto free_star_rule;
	}
	if (next_ft) {
		struct fs_prio *parent;

		FUNC12(parent, next_ft);
		FUNC13(&next_ft->base);
	}
	prev_ft = FUNC7(ft, prio);
	if (prev_ft) {
		struct fs_prio *prev_parent;

		FUNC12(prev_parent, prev_ft);

		err = FUNC5(NULL, prev_parent, ft);
		if (err) {
			FUNC22(&root->fs_chain_lock);
			goto destroy_chained_star_rule;
		}
		FUNC13(&prev_ft->base);
	}
	FUNC22(&root->fs_chain_lock);
	FUNC16(fg_in);
	FUNC16(match_value);

	return 0;

destroy_chained_star_rule:
	FUNC14(FUNC11(&prio->base), ft, NULL);
	if (next_ft)
		FUNC13(&next_ft->base);
free_star_rule:
	FUNC9(ft->star_rule.fte);
	FUNC18(FUNC11(&ft->base), ft->vport,
			       ft->type, ft->id,
			       fg->id);
free_fg:
	FUNC15(fg);
out:
	FUNC16(fg_in);
	FUNC16(match_value);
	return err;
}