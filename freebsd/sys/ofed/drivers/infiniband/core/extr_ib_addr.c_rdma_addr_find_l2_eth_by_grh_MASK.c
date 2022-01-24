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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct resolve_cb_context {int status; int /*<<< orphan*/  comp; struct rdma_dev_addr* addr; } ;
struct rdma_dev_addr {int hoplimit; int /*<<< orphan*/  dst_dev_addr; int /*<<< orphan*/  net; int /*<<< orphan*/  bound_dev_if; } ;
struct net_device {int /*<<< orphan*/  if_index; } ;
typedef  int /*<<< orphan*/  dev_addr ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_dev_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,union ib_gid const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr*,struct rdma_dev_addr*,int,int /*<<< orphan*/ ,struct resolve_cb_context*) ; 
 int /*<<< orphan*/  resolve_cb ; 
 int /*<<< orphan*/  self ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(const union ib_gid *sgid,
				 const union ib_gid *dgid,
				 u8 *dmac, struct net_device *dev,
				 int *hoplimit)
{
	int ret = 0;
	struct rdma_dev_addr dev_addr;
	struct resolve_cb_context ctx;

	union {
		struct sockaddr     _sockaddr;
		struct sockaddr_in  _sockaddr_in;
		struct sockaddr_in6 _sockaddr_in6;
	} sgid_addr, dgid_addr;

	FUNC4(&sgid_addr._sockaddr, sgid);
	FUNC4(&dgid_addr._sockaddr, dgid);

	FUNC3(&dev_addr, 0, sizeof(dev_addr));

	dev_addr.bound_dev_if = dev->if_index;
	dev_addr.net = FUNC0(dev);

	ctx.addr = &dev_addr;
	FUNC1(&ctx.comp);
	ret = FUNC5(&self, &sgid_addr._sockaddr, &dgid_addr._sockaddr,
			&dev_addr, 1000, resolve_cb, &ctx);
	if (ret)
		return ret;

	FUNC6(&ctx.comp);

	ret = ctx.status;
	if (ret)
		return ret;

	FUNC2(dmac, dev_addr.dst_dev_addr, ETH_ALEN);
	if (hoplimit)
		*hoplimit = dev_addr.hoplimit;
	return ret;
}