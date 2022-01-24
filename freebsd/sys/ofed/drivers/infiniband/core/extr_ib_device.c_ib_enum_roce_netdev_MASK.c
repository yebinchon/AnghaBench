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
typedef  scalar_t__ u8 ;
struct net_device {int if_flags; } ;
struct ib_device {struct net_device* (* get_netdev ) (struct ib_device*,scalar_t__) ;} ;
typedef  scalar_t__ (* roce_netdev_filter ) (struct ib_device*,scalar_t__,struct net_device*,void*) ;
typedef  int /*<<< orphan*/  (* roce_netdev_callback ) (struct ib_device*,scalar_t__,struct net_device*,void*) ;

/* Variables and functions */
 int IFF_DYING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ib_device*) ; 
 scalar_t__ FUNC2 (struct ib_device*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ib_device*) ; 
 struct net_device* FUNC4 (struct ib_device*,scalar_t__) ; 

void FUNC5(struct ib_device *ib_dev,
			 roce_netdev_filter filter,
			 void *filter_cookie,
			 roce_netdev_callback cb,
			 void *cookie)
{
	u8 port;

	for (port = FUNC3(ib_dev); port <= FUNC1(ib_dev);
	     port++)
		if (FUNC2(ib_dev, port)) {
			struct net_device *idev = NULL;

			if (ib_dev->get_netdev)
				idev = ib_dev->get_netdev(ib_dev, port);

			if (idev && (idev->if_flags & IFF_DYING)) {
				FUNC0(idev);
				idev = NULL;
			}

			if (filter(ib_dev, port, idev, filter_cookie))
				cb(ib_dev, port, idev, cookie);

			if (idev)
				FUNC0(idev);
		}
}