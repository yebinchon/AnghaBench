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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  min_wqe_inline_mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hca_vport_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_hca_vport_context_out ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *mdev,
					 int *min_header)
{
	u32 *out;
	u32 outlen = FUNC1(query_hca_vport_context_out);
	int err;

	out = FUNC4(outlen);
	if (!out)
		return -ENOMEM;

	err = FUNC3(mdev, 1, 0, out, outlen);
	if (err)
		goto out;

	*min_header = FUNC0(query_hca_vport_context_out, out,
			       hca_vport_context.min_wqe_inline_mode);

out:
	FUNC2(out);
	return err;
}