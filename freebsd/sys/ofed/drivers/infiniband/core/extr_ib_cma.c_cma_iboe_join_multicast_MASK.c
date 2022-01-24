#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; int /*<<< orphan*/  net; } ;
struct TYPE_8__ {int /*<<< orphan*/  src_addr; struct rdma_dev_addr dev_addr; } ;
struct TYPE_9__ {TYPE_2__ addr; } ;
struct TYPE_10__ {size_t port_num; scalar_t__ ps; TYPE_3__ route; } ;
struct rdma_id_private {TYPE_4__ id; TYPE_1__* cma_dev; } ;
struct net_device {int /*<<< orphan*/  if_mtu; } ;
struct TYPE_11__ {int hop_limit; int /*<<< orphan*/  port_gid; int /*<<< orphan*/  mtu; int /*<<< orphan*/  mgid; int /*<<< orphan*/  rate; int /*<<< orphan*/  qkey; int /*<<< orphan*/  pkey; } ;
struct iboe_mcast_work {int /*<<< orphan*/  work; struct cma_multicast* mc; struct rdma_id_private* id; TYPE_5__ rec; } ;
struct ib_sa_multicast {int dummy; } ;
struct TYPE_12__ {struct iboe_mcast_work* ib; } ;
struct cma_multicast {scalar_t__ join_state; int igmp_joined; TYPE_6__ multicast; int /*<<< orphan*/  mcref; int /*<<< orphan*/  addr; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_7__ {int* default_gid_type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_GID_TYPE_ROCE_UDP_ENCAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IPV6_DEFAULT_HOPLIMIT ; 
 scalar_t__ RDMA_PS_UDP ; 
 int /*<<< orphan*/  RDMA_UDP_QKEY ; 
 int /*<<< orphan*/  SENDONLY_FULLMEMBER_JOIN ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cma_wq ; 
 scalar_t__ FUNC4 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  iboe_mcast_work_handler ; 
 int /*<<< orphan*/  FUNC11 (struct iboe_mcast_work*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 size_t FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct rdma_id_private *id_priv,
				   struct cma_multicast *mc)
{
	struct iboe_mcast_work *work;
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	int err = 0;
	struct sockaddr *addr = (struct sockaddr *)&mc->addr;
	struct net_device *ndev = NULL;
	enum ib_gid_type gid_type;
	bool send_only;

	send_only = mc->join_state == FUNC0(SENDONLY_FULLMEMBER_JOIN);

	if (FUNC4((struct sockaddr *)&mc->addr))
		return -EINVAL;

	work = FUNC13(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	mc->multicast.ib = FUNC13(sizeof(struct ib_sa_multicast), GFP_KERNEL);
	if (!mc->multicast.ib) {
		err = -ENOMEM;
		goto out1;
	}

	gid_type = id_priv->cma_dev->default_gid_type[id_priv->id.port_num -
		   FUNC16(id_priv->cma_dev->device)];
	FUNC2(addr, &mc->multicast.ib->rec.mgid, gid_type);

	mc->multicast.ib->rec.pkey = FUNC5(0xffff);
	if (id_priv->id.ps == RDMA_PS_UDP)
		mc->multicast.ib->rec.qkey = FUNC6(RDMA_UDP_QKEY);

	if (dev_addr->bound_dev_if)
		ndev = FUNC7(dev_addr->net, dev_addr->bound_dev_if);
	if (!ndev) {
		err = -ENODEV;
		goto out2;
	}
	mc->multicast.ib->rec.rate = FUNC10(ndev);
	mc->multicast.ib->rec.hop_limit = 1;
	mc->multicast.ib->rec.mtu = FUNC9(ndev->if_mtu);

	if (addr->sa_family == AF_INET || addr->sa_family == AF_INET6) {
		if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP) {
			mc->multicast.ib->rec.hop_limit = IPV6_DEFAULT_HOPLIMIT;
			if (!send_only) {
				err = FUNC3(ndev, &mc->multicast.ib->rec.mgid,
						    true);
				if (!err)
					mc->igmp_joined = true;
			}
		}
	} else {
		if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP)
			err = -ENOTSUPP;
	}
	FUNC8(ndev);
	if (err || !mc->multicast.ib->rec.mtu) {
		if (!err)
			err = -EINVAL;
		goto out2;
	}
	FUNC15((struct sockaddr *)&id_priv->id.route.addr.src_addr,
		    &mc->multicast.ib->rec.port_gid);
	work->id = id_priv;
	work->mc = mc;
	FUNC1(&work->work, iboe_mcast_work_handler);
	FUNC12(&mc->mcref);
	FUNC14(cma_wq, &work->work);

	return 0;

out2:
	FUNC11(mc->multicast.ib);
out1:
	FUNC11(work);
	return err;
}