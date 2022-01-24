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
struct TYPE_3__ {int /*<<< orphan*/ * sqps; TYPE_2__* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx4_ib_dev *dev, int slave,
				  int port, int do_init)
{
	int ret = 0;

	if (!do_init) {
		FUNC0(&dev->sriov.demux[port - 1], slave);
		/* for master, destroy real sqp resources */
		if (slave == FUNC3(dev->dev))
			FUNC2(dev, slave, port,
					     dev->sriov.sqps[port - 1], 1);
		/* destroy the tunnel qp resources */
		FUNC2(dev, slave, port,
				     dev->sriov.demux[port - 1].tun[slave], 1);
		return 0;
	}

	/* create the tunnel qp resources */
	ret = FUNC1(&dev->ib_dev, slave, port, 1,
				  dev->sriov.demux[port - 1].tun[slave]);

	/* for master, create the real sqp resources */
	if (!ret && slave == FUNC3(dev->dev))
		ret = FUNC1(&dev->ib_dev, slave, port, 0,
					  dev->sriov.sqps[port - 1]);
	return ret;
}