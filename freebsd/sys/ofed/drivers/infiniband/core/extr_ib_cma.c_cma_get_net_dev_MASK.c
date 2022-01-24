#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct ib_cm_event {int dummy; } ;
struct cma_req_info {int /*<<< orphan*/  pkey; int /*<<< orphan*/  port; int /*<<< orphan*/  device; int /*<<< orphan*/  service_id; union ib_gid local_gid; scalar_t__ has_gid; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int) ; 
 int FUNC1 (struct sockaddr*,struct sockaddr*,struct ib_cm_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ib_gid const*,struct sockaddr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_cm_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct sockaddr*,struct sockaddr*) ; 

__attribute__((used)) static struct net_device *FUNC7(struct ib_cm_event *ib_event,
					  const struct cma_req_info *req)
{
	struct sockaddr_storage listen_addr_storage, src_addr_storage;
	struct sockaddr *listen_addr = (struct sockaddr *)&listen_addr_storage,
			*src_addr = (struct sockaddr *)&src_addr_storage;
	struct net_device *net_dev;
	const union ib_gid *gid = req->has_gid ? &req->local_gid : NULL;
	int err;

	err = FUNC1(listen_addr, src_addr, ib_event,
			       req->service_id);
	if (err)
		return FUNC0(err);

	if (FUNC4(req->device, req->port)) {
		net_dev = FUNC5(req->device, req->port,
						       ib_event);
	} else {
		net_dev = FUNC3(req->device, req->port,
						   req->pkey,
						   gid, listen_addr);
	}
	if (!net_dev)
		return FUNC0(-ENODEV);

	if (!FUNC6(net_dev, listen_addr, src_addr)) {
		FUNC2(net_dev);
		return FUNC0(-EHOSTUNREACH);
	}

	return net_dev;
}