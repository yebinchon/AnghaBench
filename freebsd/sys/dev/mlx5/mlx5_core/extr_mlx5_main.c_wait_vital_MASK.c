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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct pci_dev {scalar_t__ device; } ;
struct mlx5_core_health {int /*<<< orphan*/  health_counter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mlx5_core_dev* FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev = FUNC4(pdev);
	struct mlx5_core_health *health = &dev->priv.health;
	const int niter = 100;
	u32 count;
	u16 did;
	int i;

	/* Wait for firmware to be ready after reset */
	FUNC3(1000);
	for (i = 0; i < niter; i++) {
		if (FUNC5(pdev, 2, &did)) {
			FUNC2(dev, "failed reading config word\n");
			break;
		}
		if (did == pdev->device) {
			FUNC1(dev,
			    "device ID correctly read after %d iterations\n", i);
			break;
		}
		FUNC3(50);
	}
	if (i == niter)
		FUNC2(dev, "could not read device ID\n");

	for (i = 0; i < niter; i++) {
		count = FUNC0(health->health_counter);
		if (count && count != 0xffffffff) {
			FUNC1(dev,
			"Counter value 0x%x after %d iterations\n", count, i);
			break;
		}
		FUNC3(50);
	}

	if (i == niter)
		FUNC2(dev, "could not read device ID\n");
}