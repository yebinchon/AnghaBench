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
typedef  int u8 ;
typedef  int u64 ;
struct pci_dev {int dummy; } ;
struct mlx4_dev {int flags; int /*<<< orphan*/ * dev_vfs; TYPE_1__* persist; } ;
struct TYPE_2__ {int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_FLAG_MASTER ; 
 int MLX4_FLAG_SLAVE ; 
 int MLX4_FLAG_SRIOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,...) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pf_loading ; 

__attribute__((used)) static u64 FUNC8(struct mlx4_dev *dev, struct pci_dev *pdev,
			     u8 total_vfs, int existing_vfs, int reset_flow)
{
	u64 dev_flags = dev->flags;
	int err = 0;

	if (reset_flow) {
		dev->dev_vfs = FUNC2(total_vfs, sizeof(*dev->dev_vfs),
				       GFP_KERNEL);
		if (!dev->dev_vfs)
			goto free_mem;
		return dev_flags;
	}

	FUNC1(&pf_loading);
	if (dev->flags &  MLX4_FLAG_SRIOV) {
		if (existing_vfs != total_vfs) {
			FUNC5(dev, "SR-IOV was already enabled, but with num_vfs (%d) different than requested (%d)\n",
				 existing_vfs, total_vfs);
			total_vfs = existing_vfs;
		}
	}

	dev->dev_vfs = FUNC4(total_vfs * sizeof(*dev->dev_vfs), GFP_KERNEL);
	if (NULL == dev->dev_vfs) {
		FUNC5(dev, "Failed to allocate memory for VFs\n");
		goto disable_sriov;
	}

	if (!(dev->flags &  MLX4_FLAG_SRIOV)) {
		FUNC6(dev, "Enabling SR-IOV with %d VFs\n", total_vfs);
		err = FUNC7(pdev, total_vfs);
	}
	if (err) {
		FUNC5(dev, "Failed to enable SR-IOV, continuing without SR-IOV (err = %d)\n",
			 err);
		goto disable_sriov;
	} else {
		FUNC6(dev, "Running in master mode\n");
		dev_flags |= MLX4_FLAG_SRIOV |
			MLX4_FLAG_MASTER;
		dev_flags &= ~MLX4_FLAG_SLAVE;
		dev->persist->num_vfs = total_vfs;
	}
	return dev_flags;

disable_sriov:
	FUNC0(&pf_loading);
free_mem:
	dev->persist->num_vfs = 0;
	FUNC3(dev->dev_vfs);
        dev->dev_vfs = NULL;
	return dev_flags & ~MLX4_FLAG_MASTER;
}