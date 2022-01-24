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
struct rdma_dev_addr {int /*<<< orphan*/  bound_dev_if; int /*<<< orphan*/  dst_dev_addr; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  src_dev_addr; void* dev_type; } ;
struct net_device {int if_flags; scalar_t__ if_type; unsigned char const* if_broadcastaddr; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_addrlen; } ;

/* Variables and functions */
 void* ARPHRD_ETHER ; 
 void* ARPHRD_INFINIBAND ; 
 int IFF_LOOPBACK ; 
 scalar_t__ IFT_ETHER ; 
 scalar_t__ IFT_INFINIBAND ; 
 unsigned char const* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rdma_dev_addr *dev_addr, struct net_device *dev,
		     const unsigned char *dst_dev_addr)
{
	/* check for loopback device */
	if (dev->if_flags & IFF_LOOPBACK) {
		dev_addr->dev_type = ARPHRD_ETHER;
		FUNC1(dev_addr->src_dev_addr, 0, MAX_ADDR_LEN);
		FUNC1(dev_addr->broadcast, 0, MAX_ADDR_LEN);
		FUNC1(dev_addr->dst_dev_addr, 0, MAX_ADDR_LEN);
		dev_addr->bound_dev_if = dev->if_index;
		return (0);
	} else if (dev->if_type == IFT_INFINIBAND)
		dev_addr->dev_type = ARPHRD_INFINIBAND;
	else if (dev->if_type == IFT_ETHER)
		dev_addr->dev_type = ARPHRD_ETHER;
	else
		dev_addr->dev_type = 0;
	FUNC2(dev_addr->src_dev_addr, FUNC0(dev),
			   dev->if_addrlen, MAX_ADDR_LEN);
	FUNC2(dev_addr->broadcast, dev->if_broadcastaddr,
			   dev->if_addrlen, MAX_ADDR_LEN);
	if (dst_dev_addr != NULL) {
		FUNC2(dev_addr->dst_dev_addr, dst_dev_addr,
				   dev->if_addrlen, MAX_ADDR_LEN);
	}
	dev_addr->bound_dev_if = dev->if_index;
	return 0;
}