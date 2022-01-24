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
struct mlx5_ib_dev {TYPE_2__* mdev; int /*<<< orphan*/  ib_dev; } ;
struct ib_udata {int /*<<< orphan*/  outlen; int /*<<< orphan*/  inlen; } ;
struct ib_port_attr {int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  max_pkeys; } ;
struct ib_device_attr {int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  max_pkeys; } ;
struct TYPE_4__ {TYPE_1__* port_caps; } ;
struct TYPE_3__ {int /*<<< orphan*/  gid_table_len; int /*<<< orphan*/  pkey_table_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_port_attr*) ; 
 struct ib_port_attr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ib_port_attr*,struct ib_udata*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int,...) ; 
 int /*<<< orphan*/  num_ports ; 

__attribute__((used)) static int FUNC7(struct mlx5_ib_dev *dev)
{
	struct ib_device_attr *dprops = NULL;
	struct ib_port_attr *pprops = NULL;
	int err = -ENOMEM;
	int port;
	struct ib_udata uhw = {.inlen = 0, .outlen = 0};

	pprops = FUNC2(sizeof(*pprops), GFP_KERNEL);
	if (!pprops)
		goto out;

	dprops = FUNC2(sizeof(*dprops), GFP_KERNEL);
	if (!dprops)
		goto out;

	err = FUNC4(&dev->ib_dev, dprops, &uhw);
	if (err) {
		FUNC6(dev, "query_device failed %d\n", err);
		goto out;
	}

	for (port = 1; port <= FUNC0(dev->mdev, num_ports); port++) {
		err = FUNC5(&dev->ib_dev, port, pprops);
		if (err) {
			FUNC6(dev, "query_port %d failed %d\n",
				     port, err);
			break;
		}
		dev->mdev->port_caps[port - 1].pkey_table_len =
						dprops->max_pkeys;
		dev->mdev->port_caps[port - 1].gid_table_len =
						pprops->gid_tbl_len;
		FUNC3(dev, "pkey_table_len %d, gid_table_len %d\n",
			    dprops->max_pkeys, pprops->gid_tbl_len);
	}

out:
	FUNC1(pprops);
	FUNC1(dprops);

	return err;
}