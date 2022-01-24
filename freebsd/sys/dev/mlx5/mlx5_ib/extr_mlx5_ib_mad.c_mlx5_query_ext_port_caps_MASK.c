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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct ib_smp {int /*<<< orphan*/  status; int /*<<< orphan*/  attr_mod; int /*<<< orphan*/  attr_id; } ;
struct TYPE_4__ {TYPE_1__* port_caps; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_port_cap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_ATTR_EXTENDED_PORT_INFO ; 
 int /*<<< orphan*/  MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_smp*) ; 
 struct ib_smp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_ib_dev*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 

int FUNC7(struct mlx5_ib_dev *dev, u8 port)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;
	u16 packet_error;

	in_mad  = FUNC5(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC4(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC2(in_mad);
	in_mad->attr_id = MLX5_ATTR_EXTENDED_PORT_INFO;
	in_mad->attr_mod = FUNC1(port);

	err = FUNC6(dev, 1, 1, 1, NULL, NULL, in_mad, out_mad);

	packet_error = FUNC0(out_mad->status);

	dev->mdev->port_caps[port - 1].ext_port_cap = (!err && !packet_error) ?
		MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO : 0;

out:
	FUNC3(in_mad);
	FUNC3(out_mad);
	return err;
}