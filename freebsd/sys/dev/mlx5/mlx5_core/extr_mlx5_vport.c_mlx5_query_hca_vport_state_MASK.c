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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vport_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hca_vport_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  query_hca_vport_context_out ; 

int FUNC5(struct mlx5_core_dev *dev, u8 *vport_state)
{
	u32 *out;
	int outlen = FUNC1(query_hca_vport_context_out);
	int err;

	out = FUNC4(outlen);
	if (!out)
		return -ENOMEM;

	err = FUNC3(dev, 1, 0, out, outlen);
	if (err)
		goto out;

	*vport_state = FUNC0(query_hca_vport_context_out, out,
				hca_vport_context.vport_state);

out:
	FUNC2(out);
	return err;
}