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
typedef  int /*<<< orphan*/  u16 ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct ib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct list_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ib_gid const*,struct sockaddr const*,struct net_device**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *
FUNC5(struct ib_device *dev, u8 port, u16 pkey,
    const union ib_gid *gid, const struct sockaddr *addr, void *client_data)
{
	struct net_device *net_dev;
	struct list_head *dev_list = client_data;
	u16 pkey_index;
	int matches;
	int ret;

	if (!FUNC4(dev, port))
		return NULL;

	ret = FUNC3(dev, port, pkey, &pkey_index);
	if (ret)
		return NULL;

	if (!dev_list)
		return NULL;

	/* See if we can find a unique device matching the L2 parameters */
	matches = FUNC0(dev_list, port, pkey_index,
						gid, NULL, &net_dev);

	switch (matches) {
	case 0:
		return NULL;
	case 1:
		return net_dev;
	}

	FUNC1(net_dev);

	/* Couldn't find a unique device with L2 parameters only. Use L3
	 * address to uniquely match the net device */
	matches = FUNC0(dev_list, port, pkey_index,
						gid, addr, &net_dev);
	switch (matches) {
	case 0:
		return NULL;
	default:
		FUNC2(&dev->dev,
				     "duplicate IP address detected\n");
		/* Fall through */
	case 1:
		return net_dev;
	}
}