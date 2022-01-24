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
typedef  int u64 ;
typedef  int u32 ;
struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_FPGA_ACCESS_TYPE_DONTCARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsec_counters_addr_high ; 
 int /*<<< orphan*/  ipsec_counters_addr_low ; 
 int /*<<< orphan*/  ipsec_extended_cap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*,char*,int) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_fpga_device*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx5_core_dev *mdev, u64 *counters,
				  unsigned int counters_count)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	unsigned int i;
	__be32 *data;
	u32 count;
	u64 addr;
	int ret;

	if (!fdev || !fdev->ipsec)
		return 0;

	addr = (u64)FUNC0(ipsec_extended_cap, fdev->ipsec->caps,
			     ipsec_counters_addr_low) +
	       ((u64)FUNC0(ipsec_extended_cap, fdev->ipsec->caps,
			     ipsec_counters_addr_high) << 32);

	count = FUNC4(mdev);

	data = FUNC2(sizeof(*data) * count * 2, GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC5(fdev, count * sizeof(u64), addr, data,
				 MLX5_FPGA_ACCESS_TYPE_DONTCARE);
	if (ret < 0) {
		FUNC3(fdev, "Failed to read IPSec counters from HW: %d\n",
			      ret);
		goto out;
	}
	ret = 0;

	if (count > counters_count)
		count = counters_count;

	/* Each counter is low word, then high. But each word is big-endian */
	for (i = 0; i < count; i++)
		counters[i] = (u64)FUNC6(data[i * 2]) |
			      ((u64)FUNC6(data[i * 2 + 1]) << 32);

out:
	FUNC1(data);
	return ret;
}