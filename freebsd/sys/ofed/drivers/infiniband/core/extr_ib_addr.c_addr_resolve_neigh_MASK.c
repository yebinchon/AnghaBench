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
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; int /*<<< orphan*/  src_dev_addr; int /*<<< orphan*/  dst_dev_addr; } ;
struct ifnet {int if_flags; scalar_t__ if_index; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rdma_dev_addr*,struct ifnet*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sockaddr const*,struct rdma_dev_addr*) ; 

__attribute__((used)) static int FUNC3(struct ifnet *dev,
			      const struct sockaddr *dst_in,
			      u8 *edst,
			      struct rdma_dev_addr *addr)
{
	if (dev->if_flags & IFF_LOOPBACK) {
		int ret;

		/*
		 * Binding to a loopback device is not allowed. Make
		 * sure the destination device address is global by
		 * clearing the bound device interface:
		 */
		if (addr->bound_dev_if == dev->if_index)
			addr->bound_dev_if = 0;

		ret = FUNC2(dst_in, addr);
		if (ret == 0) {
			FUNC0(addr->dst_dev_addr, addr->src_dev_addr,
			       MAX_ADDR_LEN);
		}
		return ret;
	}

	/* If the device doesn't do ARP internally */
	if (!(dev->if_flags & IFF_NOARP))
		return FUNC1(addr, dev, edst);

	return FUNC1(addr, dev, NULL);
}