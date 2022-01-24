#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mlx5_priv {int dummy; } ;
struct mlx5_core_dev {int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  dump_lock; struct mlx5_priv priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,struct mlx5_priv*) ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*,struct mlx5_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mlx5_core_dev* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev  = FUNC8(pdev);
	struct mlx5_priv *priv = &dev->priv;

	if (FUNC6(dev, priv, true)) {
		FUNC1(dev, "mlx5_unload_one failed\n");
		FUNC3(dev);
		return;
	}

	FUNC4(dev);
	FUNC3(dev);
	FUNC2(dev);
	FUNC5(dev, priv);
	FUNC7(&dev->dump_lock);
	FUNC9(pdev, NULL);
	FUNC10(&dev->sysctl_ctx);
	FUNC0(dev);
}