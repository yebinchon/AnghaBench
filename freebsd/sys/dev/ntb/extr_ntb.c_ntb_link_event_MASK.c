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
struct rm_priotracker {int dummy; } ;
struct ntb_child {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx; TYPE_1__* ctx_ops; struct ntb_child* next; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_event ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 struct ntb_child** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(device_t dev)
{
	struct ntb_child **cpp = FUNC1(dev);
	struct ntb_child *nc;
	struct rm_priotracker ctx_tracker;
	enum ntb_speed speed;
	enum ntb_width width;

	if (FUNC0(dev, &speed, &width)) {
		FUNC2(dev, "Link is up (PCIe %d.x / x%d)\n",
		    (int)speed, (int)width);
	} else {
		FUNC2(dev, "Link is down\n");
	}
	for (nc = *cpp; nc != NULL; nc = nc->next) {
		FUNC3(&nc->ctx_lock, &ctx_tracker);
		if (nc->ctx_ops != NULL && nc->ctx_ops->link_event != NULL)
			nc->ctx_ops->link_event(nc->ctx);
		FUNC4(&nc->ctx_lock, &ctx_tracker);
	}
}