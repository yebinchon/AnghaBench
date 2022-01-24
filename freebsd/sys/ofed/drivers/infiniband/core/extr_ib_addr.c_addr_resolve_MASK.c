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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct rdma_dev_addr {int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int FUNC2 (struct sockaddr_in*,struct sockaddr_in const*,struct rdma_dev_addr*,int /*<<< orphan*/ *,struct net_device**) ; 
 int FUNC3 (struct sockaddr_in6*,struct sockaddr_in6 const*,struct rdma_dev_addr*,int /*<<< orphan*/ *,struct net_device**) ; 
 int FUNC4 (struct net_device*,struct sockaddr const*,int /*<<< orphan*/ *,struct rdma_dev_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct sockaddr *src_in,
			const struct sockaddr *dst_in,
			struct rdma_dev_addr *addr)
{
	struct epoch_tracker et;
	struct net_device *ndev = NULL;
	u8 edst[MAX_ADDR_LEN];
	int ret;

	if (dst_in->sa_family != src_in->sa_family)
		return -EINVAL;

	FUNC0(et);
	switch (src_in->sa_family) {
	case AF_INET:
		ret = FUNC2((struct sockaddr_in *)src_in,
				    (const struct sockaddr_in *)dst_in,
				    addr, edst, &ndev);
		break;
	case AF_INET6:
		ret = FUNC3((struct sockaddr_in6 *)src_in,
				    (const struct sockaddr_in6 *)dst_in, addr,
				    edst, &ndev);
		break;
	default:
		ret = -EADDRNOTAVAIL;
		break;
	}
	FUNC1(et);

	/* check for error */
	if (ret != 0)
		return ret;

	/* store MAC addresses and check for loopback */
	ret = FUNC4(ndev, dst_in, edst, addr);

	/* set belonging VNET, if any */
	addr->net = FUNC5(ndev);
	FUNC6(ndev);

	return ret;
}