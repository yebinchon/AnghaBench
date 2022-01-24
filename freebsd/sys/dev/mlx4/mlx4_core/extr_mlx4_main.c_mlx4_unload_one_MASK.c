#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mlx4_priv {int removed; int pci_dev_data; int /*<<< orphan*/  driver_uar; int /*<<< orphan*/  kar; int /*<<< orphan*/ * port; } ;
struct mlx4_dev_persistent {struct mlx4_dev* dev; } ;
struct TYPE_4__ {int num_ports; int /*<<< orphan*/  qp1_proxy; int /*<<< orphan*/  qp1_tunnel; int /*<<< orphan*/  qp0_proxy; int /*<<< orphan*/  qp0_tunnel; int /*<<< orphan*/  qp0_qkey; int /*<<< orphan*/ * possible_type; int /*<<< orphan*/ * port_type; } ;
struct mlx4_dev {int flags; int /*<<< orphan*/  dev_vfs; TYPE_2__ caps; TYPE_1__* persist; } ;
struct TYPE_3__ {int /*<<< orphan*/ * curr_port_poss_type; int /*<<< orphan*/ * curr_port_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_CLEANUP_ALL ; 
 int MLX4_FLAG_MSI_X ; 
 int /*<<< orphan*/  RES_TR_FREE_SLAVES_ONLY ; 
 int /*<<< orphan*/  RES_TR_FREE_STRUCTS_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct mlx4_dev*) ; 
 scalar_t__ FUNC25 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC27 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 struct mlx4_dev_persistent* FUNC32 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC33(struct pci_dev *pdev)
{
	struct mlx4_dev_persistent *persist = FUNC32(pdev);
	struct mlx4_dev  *dev  = persist->dev;
	struct mlx4_priv *priv = FUNC27(dev);
	int               pci_dev_data;
	int p, i;

	if (priv->removed)
		return;

	/* saving current ports type for further use */
	for (i = 0; i < dev->caps.num_ports; i++) {
		dev->persist->curr_port_type[i] = dev->caps.port_type[i + 1];
		dev->persist->curr_port_poss_type[i] = dev->caps.
						       possible_type[i + 1];
	}

	pci_dev_data = priv->pci_dev_data;

	FUNC28(dev);
	FUNC30(dev);

	for (p = 1; p <= dev->caps.num_ports; p++) {
		FUNC11(&priv->port[p]);
		FUNC2(dev, p);
	}

	if (FUNC24(dev))
		FUNC23(dev,
					   RES_TR_FREE_SLAVES_ONLY);

	FUNC6(dev);
	if (!FUNC25(dev))
		FUNC4(dev);
	FUNC12(dev);
	FUNC13(dev);
	FUNC5(dev);
	FUNC20(dev);
	FUNC7(dev);
	FUNC8(dev);
	FUNC9(dev);
	FUNC15(dev);
	FUNC10(dev);

	if (FUNC24(dev))
		FUNC23(dev,
					   RES_TR_FREE_STRUCTS_ONLY);

	FUNC0(priv->kar);
	FUNC29(dev, &priv->driver_uar);
	FUNC14(dev);
	if (!FUNC25(dev))
		FUNC16(dev);
	FUNC21(dev);
	if (FUNC24(dev))
		FUNC26(dev);
	FUNC18(dev);
	FUNC17(dev);
	if (FUNC25(dev))
		FUNC26(dev);
	FUNC19(dev, MLX4_CMD_CLEANUP_ALL);

	if (dev->flags & MLX4_FLAG_MSI_X)
		FUNC31(pdev);

	if (!FUNC25(dev))
		FUNC22(dev);

	FUNC1(dev->caps.qp0_qkey);
	FUNC1(dev->caps.qp0_tunnel);
	FUNC1(dev->caps.qp0_proxy);
	FUNC1(dev->caps.qp1_tunnel);
	FUNC1(dev->caps.qp1_proxy);
	FUNC1(dev->dev_vfs);

	FUNC3(dev);
	priv->pci_dev_data = pci_dev_data;
	priv->removed = 1;
}