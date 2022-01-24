#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx4_ib_dev {TYPE_6__* dev; } ;
struct ib_wc {int wc_flags; TYPE_5__* qp; } ;
struct ib_sa_mad {int dummy; } ;
struct TYPE_12__ {int mgmt_class; int method; int /*<<< orphan*/  tid; } ;
struct ib_mad {TYPE_3__ mad_hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  interface_id; } ;
struct TYPE_11__ {TYPE_1__ global; int /*<<< orphan*/  raw; } ;
struct ib_grh {TYPE_2__ dgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_13__ {int sqp_demux; } ;
struct TYPE_15__ {TYPE_4__ caps; } ;
struct TYPE_14__ {int /*<<< orphan*/  qp_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
#define  IB_MGMT_CLASS_CM 132 
#define  IB_MGMT_CLASS_DEVICE_MGMT 131 
#define  IB_MGMT_CLASS_SUBN_ADM 130 
#define  IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE 129 
#define  IB_MGMT_CLASS_SUBN_LID_ROUTED 128 
 int IB_MGMT_METHOD_GET_RESP ; 
 int IB_MGMT_METHOD_RESP ; 
 int IB_WC_GRH ; 
 int FUNC0 (TYPE_6__*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct ib_device*,int,int*,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int,int,struct ib_sa_mad*) ; 
 int FUNC3 (struct ib_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ ,struct ib_wc*,struct ib_grh*,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,char*,...) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,...) ; 
 scalar_t__ FUNC10 (struct ib_device*,int) ; 
 struct mlx4_ib_dev* FUNC11 (struct ib_device*) ; 

__attribute__((used)) static int FUNC12(struct ib_device *ibdev, u8 port,
			struct ib_wc *wc, struct ib_grh *grh,
			struct ib_mad *mad)
{
	struct mlx4_ib_dev *dev = FUNC11(ibdev);
	int err, other_port;
	int slave = -1;
	u8 *slave_id;
	int is_eth = 0;

	if (FUNC10(ibdev, port) == IB_LINK_LAYER_INFINIBAND)
		is_eth = 0;
	else
		is_eth = 1;

	if (is_eth) {
		if (!(wc->wc_flags & IB_WC_GRH)) {
			FUNC5(ibdev, "RoCE grh not present.\n");
			return -EINVAL;
		}
		if (mad->mad_hdr.mgmt_class != IB_MGMT_CLASS_CM) {
			FUNC5(ibdev, "RoCE mgmt class is not CM\n");
			return -EINVAL;
		}
		err = FUNC0(dev->dev, port, grh->dgid.raw, &slave);
		if (err && FUNC6(dev->dev)) {
			other_port = (port == 1) ? 2 : 1;
			err = FUNC0(dev->dev, other_port, grh->dgid.raw, &slave);
			if (!err) {
				port = other_port;
				FUNC9("resolved slave %d from gid %pI6 wire port %d other %d\n",
					 slave, grh->dgid.raw, port, other_port);
			}
		}
		if (err) {
			FUNC5(ibdev, "failed matching grh\n");
			return -ENOENT;
		}
		if (slave >= dev->dev->caps.sqp_demux) {
			FUNC5(ibdev, "slave id: %d is bigger than allowed:%d\n",
				     slave, dev->dev->caps.sqp_demux);
			return -ENOENT;
		}

		if (FUNC1(ibdev, port, NULL, mad))
			return 0;

		err = FUNC4(dev, slave, port, wc->qp->qp_type, wc, grh, mad);
		if (err)
			FUNC9("failed sending to slave %d via tunnel qp (%d)\n",
				 slave, err);
		return 0;
	}

	/* Initially assume that this mad is for us */
	slave = FUNC7(dev->dev);

	/* See if the slave id is encoded in a response mad */
	if (mad->mad_hdr.method & 0x80) {
		slave_id = (u8 *) &mad->mad_hdr.tid;
		slave = *slave_id;
		if (slave != 255) /*255 indicates the dom0*/
			*slave_id = 0; /* remap tid */
	}

	/* If a grh is present, we demux according to it */
	if (wc->wc_flags & IB_WC_GRH) {
		slave = FUNC3(ibdev, port, grh->dgid.global.interface_id);
		if (slave < 0) {
			FUNC5(ibdev, "failed matching grh\n");
			return -ENOENT;
		}
	}
	/* Class-specific handling */
	switch (mad->mad_hdr.mgmt_class) {
	case IB_MGMT_CLASS_SUBN_LID_ROUTED:
	case IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE:
		/* 255 indicates the dom0 */
		if (slave != 255 && slave != FUNC7(dev->dev)) {
			if (!FUNC8(dev->dev, slave, port))
				return -EPERM;
			/* for a VF. drop unsolicited MADs */
			if (!(mad->mad_hdr.method & IB_MGMT_METHOD_RESP)) {
				FUNC5(ibdev, "demux QP0. rejecting unsolicited mad for slave %d class 0x%x, method 0x%x\n",
					     slave, mad->mad_hdr.mgmt_class,
					     mad->mad_hdr.method);
				return -EINVAL;
			}
		}
		break;
	case IB_MGMT_CLASS_SUBN_ADM:
		if (FUNC2(ibdev, port, slave,
					     (struct ib_sa_mad *) mad))
			return 0;
		break;
	case IB_MGMT_CLASS_CM:
		if (FUNC1(ibdev, port, &slave, mad))
			return 0;
		break;
	case IB_MGMT_CLASS_DEVICE_MGMT:
		if (mad->mad_hdr.method != IB_MGMT_METHOD_GET_RESP)
			return 0;
		break;
	default:
		/* Drop unsupported classes for slaves in tunnel mode */
		if (slave != FUNC7(dev->dev)) {
			FUNC9("dropping unsupported ingress mad from class:%d "
				 "for slave:%d\n", mad->mad_hdr.mgmt_class, slave);
			return 0;
		}
	}
	/*make sure that no slave==255 was not handled yet.*/
	if (slave >= dev->dev->caps.sqp_demux) {
		FUNC5(ibdev, "slave id: %d is bigger than allowed:%d\n",
			     slave, dev->dev->caps.sqp_demux);
		return -ENOENT;
	}

	err = FUNC4(dev, slave, port, wc->qp->qp_type, wc, grh, mad);
	if (err)
		FUNC9("failed sending to slave %d via tunnel qp (%d)\n",
			 slave, err);
	return 0;
}