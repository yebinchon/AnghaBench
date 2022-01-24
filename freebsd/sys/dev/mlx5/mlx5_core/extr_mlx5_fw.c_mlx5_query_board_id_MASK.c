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
struct mlx5_core_dev {int /*<<< orphan*/  board_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsd_contd_psid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  query_adapter_out ; 
 TYPE_1__ query_adapter_struct ; 

int FUNC7(struct mlx5_core_dev *dev)
{
	u32 *out;
	int outlen = FUNC2(query_adapter_out);
	int err;

	out = FUNC4(outlen, GFP_KERNEL);

	err = FUNC6(dev, out, outlen);
	if (err)
		goto out_out;

	FUNC5(dev->board_id,
	       FUNC0(query_adapter_out, out,
			    query_adapter_struct.vsd_contd_psid),
	       FUNC1(query_adapter_out,
				 query_adapter_struct.vsd_contd_psid));

out_out:
	FUNC3(out);

	return err;
}