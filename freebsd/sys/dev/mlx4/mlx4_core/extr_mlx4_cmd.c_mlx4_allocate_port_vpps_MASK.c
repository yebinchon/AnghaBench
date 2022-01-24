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
typedef  int u8 ;
typedef  int u16 ;
struct mlx4_qos_manager {int num_of_qos_vfs; int /*<<< orphan*/  priority_bm; } ;
struct TYPE_3__ {struct mlx4_qos_manager* qos_ctl; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int MLX4_NUM_UP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx4_dev*,int,int*,int*) ; 
 int FUNC2 (struct mlx4_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mlx4_dev *dev, int port)
{
	int i;
	int err;
	int num_vfs;
	u16 availible_vpp;
	u8 vpp_param[MLX4_NUM_UP];
	struct mlx4_qos_manager *port_qos;
	struct mlx4_priv *priv = FUNC5(dev);

	err = FUNC1(dev, port, &availible_vpp, vpp_param);
	if (err) {
		FUNC4(dev, "Failed query availible VPPs\n");
		return;
	}

	port_qos = &priv->mfunc.master.qos_ctl[port];
	num_vfs = (availible_vpp /
		   FUNC0(port_qos->priority_bm, MLX4_NUM_UP));

	for (i = 0; i < MLX4_NUM_UP; i++) {
		if (FUNC6(i, port_qos->priority_bm))
			vpp_param[i] = num_vfs;
	}

	err = FUNC2(dev, port, vpp_param);
	if (err) {
		FUNC4(dev, "Failed allocating VPPs\n");
		return;
	}

	/* Query actual allocated VPP, just to make sure */
	err = FUNC1(dev, port, &availible_vpp, vpp_param);
	if (err) {
		FUNC4(dev, "Failed query availible VPPs\n");
		return;
	}

	port_qos->num_of_qos_vfs = num_vfs;
	FUNC3(dev, "Port %d Availible VPPs %d\n", port, availible_vpp);

	for (i = 0; i < MLX4_NUM_UP; i++)
		FUNC3(dev, "Port %d UP %d Allocated %d VPPs\n", port, i,
			 vpp_param[i]);
}