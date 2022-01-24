#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int hoplimit; int /*<<< orphan*/  network; int /*<<< orphan*/  dst_dev_addr; scalar_t__ bound_dev_if; int /*<<< orphan*/  net; } ;
struct rdma_addr {TYPE_2__ dev_addr; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct rdma_route {int num_paths; struct cma_work* path_rec; struct rdma_addr addr; } ;
struct TYPE_4__ {struct rdma_route route; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; } ;
struct rdma_id_private {int /*<<< orphan*/  tos; TYPE_1__ id; int /*<<< orphan*/  gid_type; } ;
struct net_device {int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_vnet; } ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/  event; } ;
struct cma_work {scalar_t__ gid_type; int hop_limit; int reversible; int /*<<< orphan*/  work; TYPE_3__ event; int /*<<< orphan*/  new_state; int /*<<< orphan*/  old_state; int /*<<< orphan*/  mtu; int /*<<< orphan*/  packet_life_time; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  sl; void* mtu_selector; int /*<<< orphan*/  pkey; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  dmac; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  net; struct rdma_id_private* id; } ;

/* Variables and functions */
 scalar_t__ AF_IB ; 
 int /*<<< orphan*/  CMA_IBOE_PACKET_LIFETIME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IB_SA_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_QUERY ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_RESOLVED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cma_work_handler ; 
 int /*<<< orphan*/  cma_wq ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cma_work*) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct rdma_id_private *id_priv)
{
	struct rdma_route *route = &id_priv->id.route;
	struct rdma_addr *addr = &route->addr;
	struct cma_work *work;
	int ret;
	struct net_device *ndev = NULL;


	work = FUNC10(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	work->id = id_priv;
	FUNC0(&work->work, cma_work_handler);

	route->path_rec = FUNC10(sizeof *route->path_rec, GFP_KERNEL);
	if (!route->path_rec) {
		ret = -ENOMEM;
		goto err1;
	}

	route->num_paths = 1;

	if (addr->dev_addr.bound_dev_if) {
		unsigned long supported_gids;

		ndev = FUNC3(addr->dev_addr.net,
					addr->dev_addr.bound_dev_if);
		if (!ndev) {
			ret = -ENODEV;
			goto err2;
		}

		route->path_rec->net = ndev->if_vnet;
		route->path_rec->ifindex = ndev->if_index;
		supported_gids = FUNC14(id_priv->id.device,
							    id_priv->id.port_num);
		route->path_rec->gid_type =
			FUNC1(addr->dev_addr.network,
					   supported_gids,
					   id_priv->gid_type);
	}
	if (!ndev) {
		ret = -ENODEV;
		goto err2;
	}

	FUNC11(route->path_rec->dmac, addr->dev_addr.dst_dev_addr, ETH_ALEN);

	FUNC13((struct sockaddr *)&id_priv->id.route.addr.src_addr,
		    &route->path_rec->sgid);
	FUNC13((struct sockaddr *)&id_priv->id.route.addr.dst_addr,
		    &route->path_rec->dgid);

	/* Use the hint from IP Stack to select GID Type */
	if (route->path_rec->gid_type < FUNC5(addr->dev_addr.network))
		route->path_rec->gid_type = FUNC5(addr->dev_addr.network);
	if (((struct sockaddr *)&id_priv->id.route.addr.dst_addr)->sa_family != AF_IB)
		/* TODO: get the hoplimit from the inet/inet6 device */
		route->path_rec->hop_limit = addr->dev_addr.hoplimit;
	else
		route->path_rec->hop_limit = 1;
	route->path_rec->reversible = 1;
	route->path_rec->pkey = FUNC2(0xffff);
	route->path_rec->mtu_selector = IB_SA_EQ;
	route->path_rec->sl = FUNC8(ndev, id_priv->tos);
	route->path_rec->traffic_class = id_priv->tos;
	route->path_rec->mtu = FUNC6(ndev->if_mtu);
	route->path_rec->rate_selector = IB_SA_EQ;
	route->path_rec->rate = FUNC7(ndev);
	FUNC4(ndev);
	route->path_rec->packet_life_time_selector = IB_SA_EQ;
	route->path_rec->packet_life_time = CMA_IBOE_PACKET_LIFETIME;
	if (!route->path_rec->mtu) {
		ret = -EINVAL;
		goto err2;
	}

	work->old_state = RDMA_CM_ROUTE_QUERY;
	work->new_state = RDMA_CM_ROUTE_RESOLVED;
	work->event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
	work->event.status = 0;

	FUNC12(cma_wq, &work->work);

	return 0;

err2:
	FUNC9(route->path_rec);
	route->path_rec = NULL;
err1:
	FUNC9(work);
	return ret;
}