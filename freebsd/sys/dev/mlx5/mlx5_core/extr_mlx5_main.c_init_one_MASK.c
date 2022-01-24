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
struct sysctl_oid {int dummy; } ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  bsddev; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * error_counters; int /*<<< orphan*/ * status_counters; } ;
struct mlx5_priv {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_list; TYPE_2__ pme_stats; int /*<<< orphan*/  pci_dev_data; } ;
struct mlx5_core_dev {int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  dump_lock; int /*<<< orphan*/  intf_state_mutex; int /*<<< orphan*/  pci_status_mutex; struct mlx5_priv priv; int /*<<< orphan*/  pwr_value; int /*<<< orphan*/  pwr_status; int /*<<< orphan*/  msix_eqvec; int /*<<< orphan*/  event; struct pci_dev* pdev; int /*<<< orphan*/ * profile; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RDTUN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t MLX5_DEFAULT_PROF ; 
 int MLX5_MODULE_EVENT_ERROR_NUM ; 
 size_t MLX5_MODULE_STATUS_PLUGGED_ENABLED ; 
 size_t MLX5_MODULE_STATUS_UNPLUGGED ; 
 int MTX_DEF ; 
 int MTX_NEW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 struct mlx5_core_dev* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  mlx5_core_event ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_core_dev*) ; 
 int FUNC15 (struct mlx5_core_dev*) ; 
 int FUNC16 (struct mlx5_core_dev*,struct mlx5_priv*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_core_dev*,struct mlx5_priv*) ; 
 int FUNC20 (struct mlx5_core_dev*,struct mlx5_priv*) ; 
 char** mlx5_pme_err_desc ; 
 size_t mlx5_prof_sel ; 
 int /*<<< orphan*/  mlx5_version ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * profiles ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct pci_dev *pdev,
		    const struct pci_device_id *id)
{
	struct mlx5_core_dev *dev;
	struct mlx5_priv *priv;
	device_t bsddev = pdev->dev.bsddev;
	int i,err;
	struct sysctl_oid *pme_sysctl_node;
	struct sysctl_oid *pme_err_sysctl_node;

	dev = FUNC10(sizeof(*dev), GFP_KERNEL);
	priv = &dev->priv;
	if (id)
		priv->pci_dev_data = id->driver_data;

	if (mlx5_prof_sel < 0 || mlx5_prof_sel >= FUNC0(profiles)) {
		FUNC7(bsddev,
		    "WARN: selected profile out of range, selecting default (%d)\n",
		    MLX5_DEFAULT_PROF);
		mlx5_prof_sel = MLX5_DEFAULT_PROF;
	}
	dev->profile = &profiles[mlx5_prof_sel];
	dev->pdev = pdev;
	dev->event = mlx5_core_event;

	/* Set desc */
	FUNC8(bsddev, mlx5_version);

	FUNC27(&dev->sysctl_ctx);
	FUNC2(&dev->sysctl_ctx,
	    FUNC5(FUNC6(bsddev)),
	    OID_AUTO, "msix_eqvec", CTLFLAG_RDTUN, &dev->msix_eqvec, 0,
	    "Maximum number of MSIX event queue vectors, if set");
	FUNC2(&dev->sysctl_ctx,
	    FUNC5(FUNC6(bsddev)),
	    OID_AUTO, "power_status", CTLFLAG_RD, &dev->pwr_status, 0,
	    "0:Invalid 1:Sufficient 2:Insufficient");
	FUNC2(&dev->sysctl_ctx,
	    FUNC5(FUNC6(bsddev)),
	    OID_AUTO, "power_value", CTLFLAG_RD, &dev->pwr_value, 0,
	    "Current power value in Watts");

	pme_sysctl_node = FUNC3(&dev->sysctl_ctx,
	    FUNC5(FUNC6(bsddev)),
	    OID_AUTO, "pme_stats", CTLFLAG_RD, NULL,
	    "Port module event statistics");
	if (pme_sysctl_node == NULL) {
		err = -ENOMEM;
		goto clean_sysctl_ctx;
	}
	pme_err_sysctl_node = FUNC3(&dev->sysctl_ctx,
	    FUNC5(pme_sysctl_node),
	    OID_AUTO, "errors", CTLFLAG_RD, NULL,
	    "Port module event error statistics");
	if (pme_err_sysctl_node == NULL) {
		err = -ENOMEM;
		goto clean_sysctl_ctx;
	}
	FUNC4(&dev->sysctl_ctx,
	    FUNC5(pme_sysctl_node), OID_AUTO,
	    "module_plug", CTLFLAG_RD | CTLFLAG_MPSAFE,
	    &dev->priv.pme_stats.status_counters[MLX5_MODULE_STATUS_PLUGGED_ENABLED],
	    0, "Number of time module plugged");
	FUNC4(&dev->sysctl_ctx,
	    FUNC5(pme_sysctl_node), OID_AUTO,
	    "module_unplug", CTLFLAG_RD | CTLFLAG_MPSAFE,
	    &dev->priv.pme_stats.status_counters[MLX5_MODULE_STATUS_UNPLUGGED],
	    0, "Number of time module unplugged");
	for (i = 0 ; i < MLX5_MODULE_EVENT_ERROR_NUM; i++) {
		FUNC4(&dev->sysctl_ctx,
		    FUNC5(pme_err_sysctl_node), OID_AUTO,
		    mlx5_pme_err_desc[2 * i], CTLFLAG_RD | CTLFLAG_MPSAFE,
		    &dev->priv.pme_stats.error_counters[i],
		    0, mlx5_pme_err_desc[2 * i + 1]);
	}


	FUNC1(&priv->ctx_list);
	FUNC25(&priv->ctx_lock);
	FUNC23(&dev->pci_status_mutex);
	FUNC23(&dev->intf_state_mutex);
	FUNC22(&dev->dump_lock, "mlx5dmp", NULL, MTX_DEF | MTX_NEW);
	err = FUNC20(dev, priv);
	if (err) {
		FUNC11(dev, "mlx5_pci_init failed %d\n", err);
		goto clean_dev;
	}

	err = FUNC15(dev);
	if (err) {
		FUNC11(dev, "mlx5_health_init failed %d\n", err);
		goto close_pci;
	}

	FUNC18(dev);

	err = FUNC16(dev, priv, true);
	if (err) {
		FUNC11(dev, "mlx5_load_one failed %d\n", err);
		goto clean_health;
	}

	FUNC13(dev);

	FUNC12(dev);

	FUNC24(bsddev);
	return 0;

clean_health:
	FUNC17(dev);
	FUNC14(dev);
close_pci:
	FUNC19(dev, priv);
clean_dev:
	FUNC21(&dev->dump_lock);
clean_sysctl_ctx:
	FUNC26(&dev->sysctl_ctx);
	FUNC9(dev);
	return err;
}