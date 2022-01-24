#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct mlx5_ib_gsi_qp {int /*<<< orphan*/  lock; struct ib_qp** tx_qps; int /*<<< orphan*/  port_num; TYPE_1__* rx_qp; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_device* device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_qp*) ; 
 struct ib_qp* FUNC3 (struct mlx5_ib_gsi_qp*) ; 
 int FUNC4 (struct ib_device*,int /*<<< orphan*/ ,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (struct mlx5_ib_gsi_qp*,struct ib_qp*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx5_ib_dev* FUNC10 (struct ib_device*) ; 

__attribute__((used)) static void FUNC11(struct mlx5_ib_gsi_qp *gsi, u16 qp_index)
{
	struct ib_device *device = gsi->rx_qp->device;
	struct mlx5_ib_dev *dev = FUNC10(device);
	struct ib_qp *qp;
	unsigned long flags;
	u16 pkey;
	int ret;

	ret = FUNC4(device, gsi->port_num, qp_index, &pkey);
	if (ret) {
		FUNC6(dev, "unable to read P_Key at port %d, index %d\n",
			     gsi->port_num, qp_index);
		return;
	}

	if (!pkey) {
		FUNC5(dev, "invalid P_Key at port %d, index %d.  Skipping.\n",
			    gsi->port_num, qp_index);
		return;
	}

	FUNC8(&gsi->lock, flags);
	qp = gsi->tx_qps[qp_index];
	FUNC9(&gsi->lock, flags);
	if (qp) {
		FUNC5(dev, "already existing GSI TX QP at port %d, index %d. Skipping\n",
			    gsi->port_num, qp_index);
		return;
	}

	qp = FUNC3(gsi);
	if (FUNC0(qp)) {
		FUNC6(dev, "unable to create hardware UD QP for GSI: %ld\n",
			     FUNC1(qp));
		return;
	}

	ret = FUNC7(gsi, qp, qp_index);
	if (ret)
		goto err_destroy_qp;

	FUNC8(&gsi->lock, flags);
	FUNC2(gsi->tx_qps[qp_index]);
	gsi->tx_qps[qp_index] = qp;
	FUNC9(&gsi->lock, flags);

	return;

err_destroy_qp:
	FUNC2(qp);
}