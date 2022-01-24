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
struct mlx5_core_health {void* wq; void* wq_watchdog; int /*<<< orphan*/  recover_work; int /*<<< orphan*/  work_cmd_completion; int /*<<< orphan*/  work_watchdog; int /*<<< orphan*/  work; int /*<<< orphan*/  wq_lock; void* wq_cmd; } ;
struct TYPE_3__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_2__* pdev; TYPE_1__ priv; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  health_care ; 
 int /*<<< orphan*/  health_recover ; 
 int /*<<< orphan*/  health_watchdog ; 
 int /*<<< orphan*/  mlx5_trigger_cmd_completions ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health;
	char name[64];

	health = &dev->priv.health;

	FUNC5(name, sizeof(name), "%s-rec", FUNC4(&dev->pdev->dev));
	health->wq = FUNC2(name);
	if (!health->wq)
		goto err_recovery;

	FUNC5(name, sizeof(name), "%s-wdg", FUNC4(&dev->pdev->dev));
	health->wq_watchdog = FUNC2(name);
	if (!health->wq_watchdog)
		goto err_watchdog;

	FUNC5(name, sizeof(name), "%s-cmd", FUNC4(&dev->pdev->dev));
	health->wq_cmd = FUNC2(name);
	if (!health->wq_cmd)
		goto err_cmd;

	FUNC6(&health->wq_lock);
	FUNC1(&health->work, health_care);
	FUNC1(&health->work_watchdog, health_watchdog);
	FUNC1(&health->work_cmd_completion, mlx5_trigger_cmd_completions);
	FUNC0(&health->recover_work, health_recover);

	return 0;

err_cmd:
	FUNC3(health->wq_watchdog);
err_watchdog:
	FUNC3(health->wq);
err_recovery:
	return -ENOMEM;
}