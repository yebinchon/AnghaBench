#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  timer; int /*<<< orphan*/ * map; } ;
struct TYPE_6__ {TYPE_1__* comm; } ;
struct mlx4_priv {TYPE_3__ catas_err; TYPE_2__ mfunc; } ;
struct mlx4_dev {TYPE_4__* persist; } ;
struct TYPE_8__ {int state; int /*<<< orphan*/  catas_work; int /*<<< orphan*/  catas_wq; } ;
struct TYPE_5__ {int /*<<< orphan*/  slave_read; } ;

/* Variables and functions */
 scalar_t__ MLX4_CATAS_POLL_INTERVAL ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ mlx4_internal_err_reset ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(unsigned long dev_ptr)
{
	struct mlx4_dev *dev = (struct mlx4_dev *) dev_ptr;
	struct mlx4_priv *priv = FUNC3(dev);
	u32 slave_read;

	if (FUNC2(dev)) {
		slave_read = FUNC9(FUNC7(&priv->mfunc.comm->slave_read));
		if (FUNC1(slave_read)) {
			FUNC4(dev, "Internal error detected on the communication channel\n");
			goto internal_err;
		}
	} else if (FUNC7(priv->catas_err.map)) {
		FUNC0(dev);
		goto internal_err;
	}

	if (dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR) {
		FUNC4(dev, "Internal error mark was detected on device\n");
		goto internal_err;
	}

	FUNC5(&priv->catas_err.timer,
		  FUNC8(jiffies + MLX4_CATAS_POLL_INTERVAL));
	return;

internal_err:
	if (mlx4_internal_err_reset)
		FUNC6(dev->persist->catas_wq, &dev->persist->catas_work);
}