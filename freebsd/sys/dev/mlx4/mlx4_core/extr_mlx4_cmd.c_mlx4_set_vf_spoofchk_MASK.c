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
struct mlx4_vport_state {int spoofchk; } ;
struct TYPE_6__ {TYPE_1__* vf_admin; } ;
struct TYPE_7__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct TYPE_8__ {int flags2; } ;
struct mlx4_dev {TYPE_4__ caps; } ;
struct TYPE_5__ {struct mlx4_vport_state* vport; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int MLX4_DEV_CAP_FLAG2_FSM ; 
 int FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int,int) ; 

int FUNC4(struct mlx4_dev *dev, int port, int vf, bool setting)
{
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_vport_state *s_info;
	int slave;

	if ((!FUNC1(dev)) ||
	    !(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_FSM))
		return -EPROTONOSUPPORT;

	slave = FUNC0(dev, vf);
	if (slave < 0)
		return -EINVAL;

	port = FUNC3(dev, slave, port);
	s_info = &priv->mfunc.master.vf_admin[slave].vport[port];
	s_info->spoofchk = setting;

	return 0;
}