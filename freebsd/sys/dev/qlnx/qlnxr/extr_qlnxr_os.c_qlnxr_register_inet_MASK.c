#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct qlnxr_dev {int /*<<< orphan*/  ha; TYPE_1__ nb_inet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  qlnxr_inetaddr_event ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(struct qlnxr_dev *dev)
{
	int ret;
	dev->nb_inet.notifier_call = qlnxr_inetaddr_event;
	ret = FUNC1(&dev->nb_inet);
	if (ret) {
		FUNC0(dev->ha, "Failed to register inetaddr\n");
		return ret;
	}
	/* TODO : add for CONFIG_IPV6) */	
	return 0;	
}