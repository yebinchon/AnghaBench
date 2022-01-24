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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_flow_table {size_t num_groups; int /*<<< orphan*/ ** g; int /*<<< orphan*/  t; } ;
struct TYPE_2__ {int /*<<< orphan*/  ethertype; int /*<<< orphan*/  ip_protocol; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX5E_INNER_RSS_GROUP0_SIZE ; 
 scalar_t__ MLX5E_INNER_RSS_GROUP1_SIZE ; 
 scalar_t__ MLX5E_INNER_RSS_GROUP2_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_MATCH_INNER_HEADERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  fte_match_param ; 
 TYPE_1__ inner_headers ; 
 int /*<<< orphan*/  match_criteria ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_flow_table*) ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int
FUNC8(struct mlx5e_flow_table *ft, u32 *in,
					   int inlen)
{
	u8 *mc = FUNC1(create_flow_group_in, in, match_criteria);
	int err;
	int ix = 0;

	FUNC5(in, 0, inlen);
	FUNC2(in, match_criteria_enable, MLX5_MATCH_INNER_HEADERS);
	FUNC3(fte_match_param, mc, inner_headers.ethertype);
	FUNC3(fte_match_param, mc, inner_headers.ip_protocol);
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_INNER_RSS_GROUP0_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC6(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destory_groups;
	ft->num_groups++;

	FUNC5(in, 0, inlen);
	FUNC2(in, match_criteria_enable, MLX5_MATCH_INNER_HEADERS);
	FUNC3(fte_match_param, mc, inner_headers.ethertype);
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_INNER_RSS_GROUP1_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC6(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destory_groups;
	ft->num_groups++;

	FUNC5(in, 0, inlen);
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_INNER_RSS_GROUP2_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC6(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destory_groups;
	ft->num_groups++;

	return (0);

err_destory_groups:
	err = FUNC4(ft->g[ft->num_groups]);
	ft->g[ft->num_groups] = NULL;
	FUNC7(ft);

	return (err);
}