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
struct mlx5_core_dev {struct mlx5_priv priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,struct mlx5_priv*,int) ; 
 struct mlx5_core_dev* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev  = FUNC5(pdev);
	struct mlx5_priv *priv = &dev->priv;
	int err;

	/* enter polling mode */
	FUNC0(dev);

	/* disable all interrupts */
	FUNC1(dev);

	err = FUNC3(dev);
	if (err)
	        FUNC4(dev, priv, false);
	FUNC2(dev);
}