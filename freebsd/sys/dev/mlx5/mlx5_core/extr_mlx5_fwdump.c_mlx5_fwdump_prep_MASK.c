#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u32 ;
struct mlx5_crspace_regmap {int dummy; } ;
struct mlx5_core_dev {int vsc_addr; int dump_size; int dump_valid; int dump_copyout; int /*<<< orphan*/ * dump_data; TYPE_3__* dump_rege; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {scalar_t__ addr; int /*<<< orphan*/  cnt; } ;
struct TYPE_5__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MLX5_VSC_ADDR_OFFSET ; 
 scalar_t__ MLX5_VSC_DATA_OFFSET ; 
 int /*<<< orphan*/  MLX5_VSC_DOMAIN_SCAN_CRSPACE ; 
 scalar_t__ FUNC1 (int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  M_MLX5_DUMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  address ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (struct mlx5_core_dev*) ; 
 int FUNC9 (struct mlx5_core_dev*) ; 
 int FUNC10 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int FUNC12 (struct mlx5_core_dev*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

void
FUNC15(struct mlx5_core_dev *mdev)
{
	device_t dev;
	int error, vsc_addr;
	unsigned i, sz;
	u32 addr, in, out, next_addr;

	mdev->dump_data = NULL;
	error = FUNC8(mdev);
	if (error != 0) {
		/* Inability to create a firmware dump is not fatal. */
		FUNC6(mdev,
		    "Failed to find vendor-specific capability, error %d\n",
		    error);
		return;
	}
	error = FUNC9(mdev);
	if (error != 0)
		return;
	error = FUNC10(mdev, MLX5_VSC_DOMAIN_SCAN_CRSPACE);
	if (error != 0) {
		FUNC6(mdev, "VSC scan space is not supported\n");
		goto unlock_vsc;
	}
	dev = mdev->pdev->dev.bsddev;
	vsc_addr = mdev->vsc_addr;
	if (vsc_addr == 0) {
		FUNC6(mdev, "Cannot read VSC, no address\n");
		goto unlock_vsc;
	}

	in = 0;
	for (sz = 1, addr = 0;;) {
		FUNC2(vsc_addr, &in, address, addr);
		FUNC14(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, in, 4);
		error = FUNC12(mdev, 1);
		if (error != 0) {
			FUNC6(mdev,
		    "Failed waiting for read complete flag, error %d addr %#x\n",
			    error, addr);
			goto unlock_vsc;
		}
		FUNC13(dev, vsc_addr + MLX5_VSC_DATA_OFFSET, 4);
		out = FUNC13(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, 4);
		next_addr = FUNC1(vsc_addr, &out, address);
		if (next_addr == 0 || next_addr == addr)
			break;
		if (next_addr != addr + 4)
			sz++;
		addr = next_addr;
	}
	mdev->dump_rege = FUNC5(sz * sizeof(struct mlx5_crspace_regmap),
	    M_MLX5_DUMP, M_WAITOK | M_ZERO);

	for (i = 0, addr = 0;;) {
		FUNC3(i < sz);
		mdev->dump_rege[i].cnt++;
		FUNC2(vsc_addr, &in, address, addr);
		FUNC14(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, in, 4);
		error = FUNC12(mdev, 1);
		if (error != 0) {
			FUNC6(mdev,
		    "Failed waiting for read complete flag, error %d addr %#x\n",
			    error, addr);
			FUNC4(mdev->dump_rege, M_MLX5_DUMP);
			mdev->dump_rege = NULL;
			goto unlock_vsc;
		}
		FUNC13(dev, vsc_addr + MLX5_VSC_DATA_OFFSET, 4);
		out = FUNC13(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, 4);
		next_addr = FUNC1(vsc_addr, &out, address);
		if (next_addr == 0 || next_addr == addr)
			break;
		if (next_addr != addr + 4)
			mdev->dump_rege[++i].addr = next_addr;
		addr = next_addr;
	}
	FUNC0(i + 1 == sz,
	    ("inconsistent hw crspace reads: sz %u i %u addr %#lx",
	    sz, i, (unsigned long)addr));

	mdev->dump_size = FUNC7(mdev->dump_rege);
	mdev->dump_data = FUNC5(mdev->dump_size * sizeof(uint32_t),
	    M_MLX5_DUMP, M_WAITOK | M_ZERO);
	mdev->dump_valid = false;
	mdev->dump_copyout = false;

unlock_vsc:
	FUNC11(mdev);
}