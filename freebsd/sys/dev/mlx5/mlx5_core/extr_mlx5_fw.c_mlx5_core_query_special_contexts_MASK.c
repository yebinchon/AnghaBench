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
struct TYPE_2__ {int /*<<< orphan*/  resd_lkey; } ;
struct mlx5_core_dev {TYPE_1__ special_contexts; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_QUERY_SPECIAL_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  query_special_contexts_in ; 
 int /*<<< orphan*/  query_special_contexts_out ; 
 int /*<<< orphan*/  resd_lkey ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev)
{
	u32 in[FUNC2(query_special_contexts_in)];
	u32 out[FUNC2(query_special_contexts_out)];
	int err;

	FUNC3(in, 0, sizeof(in));
	FUNC3(out, 0, sizeof(out));

	FUNC1(query_special_contexts_in, in, opcode,
		 MLX5_CMD_OP_QUERY_SPECIAL_CONTEXTS);
	err = FUNC4(dev, in, sizeof(in), out, sizeof(out));
	if (err)
		return err;

	dev->special_contexts.resd_lkey = FUNC0(query_special_contexts_out,
						   out, resd_lkey);

	return err;
}